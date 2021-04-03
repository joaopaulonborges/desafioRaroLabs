import 'package:desafiorarolabs/Util/TamanhoFontes.dart';
import 'package:desafiorarolabs/Util/TamanhoWidgets.dart';
import 'package:desafiorarolabs/Widget/SombraCorPrimaria.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BotaoGrande extends StatelessWidget {
  final String texto;
  final Function acao;
  final Color cor;
  final bool padding;

  const BotaoGrande({Key key, this.texto, this.acao, this.cor, this.padding}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SombraCorPrimaria(
        arredondamento: 6.0,
        child: Container(
          width: TamanhoWidgets.botoesLargura(context),
          height: TamanhoWidgets.botoesAltura(context),
          child: FlatButton(
            color: this.cor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            ),
            disabledColor: this.cor.withOpacity(0.5),
            child: Text(
              this.texto,
              style: TextStyle(
                color: Colors.white,
                fontSize: TamanhoFontes.grande(context),
              ),
            ),
            onPressed: this.acao,
          ),
        ),
      ),
    );
  }
}