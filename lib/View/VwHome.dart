import 'package:desafiorarolabs/Controller/GaragemController.dart';
import 'package:desafiorarolabs/Util/Cores.dart';
import 'package:desafiorarolabs/Util/Strings.dart';
import 'package:desafiorarolabs/Util/TamanhoFontes.dart';
import 'package:desafiorarolabs/Widget/CardCaminhao.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class VwHome extends StatefulWidget {
  @override
  _VwHomeState createState() => _VwHomeState();
}

class _VwHomeState extends State<VwHome> {
  var garagemController = GetIt.I.get<GaragemController>();

  @override
  void initState() {
    super.initState();
    garagemController.carregarVagasGaragem();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.corFundo,
      appBar: AppBar(
        title: Text(
          Strings.tituloApp,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Observer(builder: (_) {
              return ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: garagemController.listaCaminhoes.length,
                itemBuilder: (context, index) {
                  return CardCaminhao(
                    caminhao: garagemController.listaCaminhoes[index],
                    index: index,
                  );
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
