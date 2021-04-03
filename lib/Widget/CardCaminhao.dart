import 'package:desafiorarolabs/Controller/GaragemController.dart';
import 'package:desafiorarolabs/Model/Caminhao.dart';
import 'package:desafiorarolabs/Util/Cores.dart';
import 'package:desafiorarolabs/Util/TamanhoFontes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CardCaminhao extends StatefulWidget {
  final Caminhao caminhao;
  final int index;
  const CardCaminhao({Key key, this.caminhao, this.index}) : super(key: key);

  @override
  _CardCaminhaoState createState() => _CardCaminhaoState();
}

class _CardCaminhaoState extends State<CardCaminhao> {
  var garagemController = GetIt.I.get<GaragemController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Cores.corFundo,
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "VAGA",
                      style: TextStyle(
                        fontSize: TamanhoFontes.micro(context),
                        color: Cores.corFontePrimaria,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      this.widget.caminhao.vaga,
                      style: TextStyle(
                        fontSize: TamanhoFontes.media(context),
                        color: Cores.corFontePrimaria,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: this.widget.caminhao.livre ? Icon(MdiIcons.truck, size: 60, color: Cores.corFonteSecundaria.withOpacity(0.3)) : Icon(MdiIcons.truck, size: 60, color: Cores.corPrimaria),
                flex: 2,
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nº da Placa: '+this.widget.caminhao.placa,
                      style: TextStyle(
                        fontSize: TamanhoFontes.pequena(context),
                        color: Cores.corFontePrimaria,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Horário de chegada: "+this.widget.caminhao.horarioChegada,
                      style: TextStyle(
                        fontSize: TamanhoFontes.pequena(context),
                        color: Cores.corFontePrimaria,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Horário de saída: "+this.widget.caminhao.horarioSaida,
                      style: TextStyle(
                        fontSize: TamanhoFontes.pequena(context),
                        color: Cores.corFontePrimaria,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
                flex: 6,
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    this.widget.caminhao.livre ?
                    InkWell(
                      child: Icon(Icons.add, size: 50, color: Cores.corPrimaria),
                      onTap: () {
                        garagemController.alterarVaga(this.widget.index+1);
                        garagemController.alterarHorarioChegada(null);
                        garagemController.alterarHorarioSaida(null);
                        garagemController.alterarVazio(false);
                        Navigator.pushNamed(context, '/VwAdicionaCaminhaoVaga');
                      },
                    )
                    : Text(
                      this.widget.caminhao.vazio ? "Vazio" : "Cheio",
                      style: TextStyle(
                        fontSize: TamanhoFontes.pequena(context),
                        fontWeight: FontWeight.bold,
                        color: this.widget.caminhao.vazio ? Colors.green : Colors.red,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}