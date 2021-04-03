import 'package:desafiorarolabs/Util/Cores.dart';
import 'package:flutter/material.dart';

class CheckboxLabel extends StatelessWidget {
  final String label;
  final Function onChanged;
  final bool ativo;
  final bool isTela;

  const CheckboxLabel({Key key, this.label, this.onChanged, this.ativo, this.isTela = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        children: [
          Container(
            width: 22.0,
            height: 22.0,
            decoration: BoxDecoration(
              color: this.ativo ? Cores.corPrimaria : Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              border: Border.all(color: Cores.corPrimaria),
              boxShadow: [
                BoxShadow(
                  color: Cores.sombra,
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Theme(
              data: ThemeData(unselectedWidgetColor: this.ativo ? Cores.corPrimaria : Colors.white),
              child: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: this.ativo ? Cores.corPrimaria : Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                child: Checkbox(
                  onChanged: this.onChanged,
                  activeColor: this.ativo ? Cores.corPrimaria : Colors.white,
                  value: this.ativo,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Text(this.label,
              style: TextStyle(color: this.isTela ? Cores.corPrimaria : null, fontWeight: this.isTela ? FontWeight.w600 : null),
            ),
          ),
        ],
      ),
    );
  }
}
