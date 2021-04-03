import 'package:desafiorarolabs/Util/Cores.dart';
import 'package:desafiorarolabs/Util/Strings.dart';
import 'package:desafiorarolabs/Util/TamanhoFontes.dart';
import 'package:desafiorarolabs/Util/TamanhoWidgets.dart';
import 'package:desafiorarolabs/Widget/Sombra.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BotaoDatePicker extends StatelessWidget {
  final String texto;
  final Function acao;

  const BotaoDatePicker({Key key, this.texto, this.acao}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sombra(
      arredondamento: 6.0,
      child: Container(
        width: TamanhoWidgets.botoesLargura(context),
        height: TamanhoWidgets.botoesAltura(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0), border: Border.all(width: 1.0, color: Cores.corPrimaria),
        ),
        child: InkWell(
          onTap: () {
            this.acao();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10.0,
              ),
              Icon(
                MdiIcons.clock,
                color: Cores.corPrimaria,
                size: 30.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                child: Text(
                  this.texto,
                  maxLines: 1,
                  style: TextStyle(color: this.texto == Strings.tituloLabelHorarioChegada || this.texto == Strings.tituloLabelHorarioSaida ? Cores.corPrimaria : Cores.corFontePrimaria, fontSize: TamanhoFontes.pequena(context)),
                  overflow: TextOverflow.clip,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}