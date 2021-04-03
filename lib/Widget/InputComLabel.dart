import 'package:desafiorarolabs/Util/Cores.dart';
import 'package:desafiorarolabs/Util/TamanhoFontes.dart';
import 'package:desafiorarolabs/Util/TamanhoWidgets.dart';
import 'package:desafiorarolabs/Widget/Sombra.dart';
import 'package:desafiorarolabs/Widget/SombraCorPrimaria.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputComLabel extends StatefulWidget {
  final String label;
  final String placeholder;
  final IconData icone;
  final String textoErro;
  final Function alterarTexto;
  final bool habilitarInput;
  final bool senha;
  final bool iconeSenha;
  final bool readOnly;
  final FocusNode focusNode;
  final TextInputType textInputType;
  final TextEditingController controller;
  const InputComLabel({Key key, this.label, this.placeholder, this.icone, this.textoErro, this.alterarTexto, this.habilitarInput, this.senha, this.controller, this.iconeSenha, this.readOnly, this.focusNode, this.textInputType}) : super(key: key);

  @override
  _InputComLabelState createState() => _InputComLabelState();
}

class _InputComLabelState extends State<InputComLabel> {
  bool focado = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Sombra(
        arredondamento: 6.0,
        child: Container(
          width: TamanhoWidgets.botoesLargura(context),
          height: TamanhoWidgets.botoesAltura(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0), border: Border.all(width: 1.0, color: Cores.corPrimaria),
          ),
          child: TextField(
            keyboardType: this.widget.textInputType,
            showCursor: true,
            readOnly: this.widget.readOnly,
            autofocus: false,
            focusNode: this.widget.focusNode,
            textInputAction: TextInputAction.done,
            controller: this.widget.controller ?? null,
            enabled: this.widget.habilitarInput,
            style: TextStyle(fontSize: TamanhoFontes.pequena(context)),
            onChanged: (value) => this.widget.alterarTexto(value),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 10.0),
              labelText: this.widget.label ?? null,
              labelStyle: TextStyle(
                fontSize: TamanhoFontes.pequena(context),
                height: focado ? 0.5 : null,
                fontWeight: focado ? FontWeight.w500 : FontWeight.w400,
                color: Cores.corPrimaria,
              ),
              prefixIcon: this.widget.icone != null ?
                Icon(this.widget.icone, color: focado ? Cores.corPrimaria : Cores.corPrimaria, size: 30.0) : null,
              hintText: this.widget.placeholder ?? null,
              errorStyle: TextStyle(fontSize: TamanhoFontes.micro(context)),
              hintStyle: TextStyle(
                fontSize: TamanhoFontes.pequena(context),
                fontWeight: FontWeight.w400,
                color: Cores.corPrimaria,
              ),
            ),
          ),
        ),
      ),
    );
  }
}