import 'package:desafiorarolabs/View/VwCadastrarCaminhaoVaga.dart';
import 'package:desafiorarolabs/View/VwHome.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

class Fluro {
  static FluroRouter router = FluroRouter();
  static Handler vwHomeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => VwHome());
  static Handler vwCadastrarCaminhaoVaga = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => VwCadastrarCaminhaoVaga());

  static void setupRouter() {
    router.define('/VwHome', handler: vwHomeHandler, transitionType: TransitionType.fadeIn);
    router.define('/VwAdicionaCaminhaoVaga', handler: vwCadastrarCaminhaoVaga, transitionType: TransitionType.fadeIn);
  }
}