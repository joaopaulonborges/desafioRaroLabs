import 'package:desafiorarolabs/Controller/GaragemController.dart';
import 'package:desafiorarolabs/Util/Cores.dart';
import 'package:desafiorarolabs/Util/Strings.dart';
import 'package:desafiorarolabs/Util/TamanhoFontes.dart';
import 'package:desafiorarolabs/Widget/BotaoDatePicker.dart';
import 'package:desafiorarolabs/Widget/BotaoGrande.dart';
import 'package:desafiorarolabs/Widget/CheckboxLabel.dart';
import 'package:desafiorarolabs/Widget/InputComLabel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class VwCadastrarCaminhaoVaga extends StatefulWidget {
  @override
  _VwCadastrarCaminhaoVagaState createState() => _VwCadastrarCaminhaoVagaState();
}

class _VwCadastrarCaminhaoVagaState extends State<VwCadastrarCaminhaoVaga> {
  var garagemController = GetIt.I.get<GaragemController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        backgroundColor: Cores.corFundo,
        appBar: AppBar(
          title: Text(
            Strings.tituloCadastroCaminhaoVaga+" "+garagemController.vaga.toString(),
            style: TextStyle(
              fontSize: TamanhoFontes.grande(context),
              color: Cores.corFontePrimaria,
            ),
            overflow: TextOverflow.clip,
          ),
          centerTitle: true,
          backgroundColor: Cores.corPrimaria,
          elevation: 10.0,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0.0, 35.0, 0.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      Strings.tituloDadosCaminhao,
                      style: TextStyle(
                        fontSize: TamanhoFontes.grande(context),
                        color: Cores.corPrimaria,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    InputComLabel(
                      textInputType: TextInputType.text,
                      icone: MdiIcons.truck,
                      iconeSenha: false,
                      readOnly: false,
                      placeholder: null,
                      label: Strings.tituloLabelPlacaCaminhao,
                      alterarTexto: (value) {
                        garagemController.alterarPlaca(value);
                      },
                      //controller: _controller,
                      habilitarInput: true,
                      senha: false,
                      textoErro: null,
                    ),
                    Observer(builder: (_) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: BotaoDatePicker(
                          texto: garagemController.horarioChegada == "" ? Strings.tituloLabelHorarioChegada : garagemController.horarioChegada,
                          acao: () async {
                            final TimeOfDay data = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay(hour: 00, minute: 00),
                            );
                            garagemController.alterarHorarioChegada(data);
                          },
                        ),
                      );
                    }),
                    Observer(builder: (_) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: BotaoDatePicker(
                          texto: garagemController.horarioSaida == "" ? Strings.tituloLabelHorarioSaida : garagemController.horarioSaida,
                          acao: () async {
                            final TimeOfDay data = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay(hour: 00, minute: 00),
                            );
                            garagemController.alterarHorarioSaida(data);
                          },
                        ),
                      );
                    }),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: Observer(builder: (_){
                        return CheckboxLabel(
                          label: "Vazio",
                          ativo: garagemController.vazio,
                          onChanged: (bool) {
                            garagemController.alterarVazio(bool);
                          },
                          isTela: true,
                        );
                      }),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    BotaoGrande(
                      acao: (){
                        bool resultado = garagemController.adicionarCaminhaoVaga(context);
                        if(resultado){
                          Navigator.pop(context);
                        }
                      },
                      cor: Cores.corPrimaria,
                      padding: false,
                      texto: Strings.botaoSalvar,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
