// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GaragemController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GaragemController on GaragemControllerBase, Store {
  final _$listaCaminhoesAtom =
      Atom(name: 'GaragemControllerBase.listaCaminhoes');

  @override
  ObservableList<Caminhao> get listaCaminhoes {
    _$listaCaminhoesAtom.reportRead();
    return super.listaCaminhoes;
  }

  @override
  set listaCaminhoes(ObservableList<Caminhao> value) {
    _$listaCaminhoesAtom.reportWrite(value, super.listaCaminhoes, () {
      super.listaCaminhoes = value;
    });
  }

  final _$placaAtom = Atom(name: 'GaragemControllerBase.placa');

  @override
  String get placa {
    _$placaAtom.reportRead();
    return super.placa;
  }

  @override
  set placa(String value) {
    _$placaAtom.reportWrite(value, super.placa, () {
      super.placa = value;
    });
  }

  final _$vagaAtom = Atom(name: 'GaragemControllerBase.vaga');

  @override
  int get vaga {
    _$vagaAtom.reportRead();
    return super.vaga;
  }

  @override
  set vaga(int value) {
    _$vagaAtom.reportWrite(value, super.vaga, () {
      super.vaga = value;
    });
  }

  final _$horarioChegadaAtom =
      Atom(name: 'GaragemControllerBase.horarioChegada');

  @override
  String get horarioChegada {
    _$horarioChegadaAtom.reportRead();
    return super.horarioChegada;
  }

  @override
  set horarioChegada(String value) {
    _$horarioChegadaAtom.reportWrite(value, super.horarioChegada, () {
      super.horarioChegada = value;
    });
  }

  final _$horarioSaidaAtom = Atom(name: 'GaragemControllerBase.horarioSaida');

  @override
  String get horarioSaida {
    _$horarioSaidaAtom.reportRead();
    return super.horarioSaida;
  }

  @override
  set horarioSaida(String value) {
    _$horarioSaidaAtom.reportWrite(value, super.horarioSaida, () {
      super.horarioSaida = value;
    });
  }

  final _$vazioAtom = Atom(name: 'GaragemControllerBase.vazio');

  @override
  bool get vazio {
    _$vazioAtom.reportRead();
    return super.vazio;
  }

  @override
  set vazio(bool value) {
    _$vazioAtom.reportWrite(value, super.vazio, () {
      super.vazio = value;
    });
  }

  final _$GaragemControllerBaseActionController =
      ActionController(name: 'GaragemControllerBase');

  @override
  dynamic adicionarCaminhaoLista(Caminhao value) {
    final _$actionInfo = _$GaragemControllerBaseActionController.startAction(
        name: 'GaragemControllerBase.adicionarCaminhaoLista');
    try {
      return super.adicionarCaminhaoLista(value);
    } finally {
      _$GaragemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic alterarPlaca(String value) {
    final _$actionInfo = _$GaragemControllerBaseActionController.startAction(
        name: 'GaragemControllerBase.alterarPlaca');
    try {
      return super.alterarPlaca(value);
    } finally {
      _$GaragemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic alterarVaga(int value) {
    final _$actionInfo = _$GaragemControllerBaseActionController.startAction(
        name: 'GaragemControllerBase.alterarVaga');
    try {
      return super.alterarVaga(value);
    } finally {
      _$GaragemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic alterarHorarioChegada(TimeOfDay data) {
    final _$actionInfo = _$GaragemControllerBaseActionController.startAction(
        name: 'GaragemControllerBase.alterarHorarioChegada');
    try {
      return super.alterarHorarioChegada(data);
    } finally {
      _$GaragemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic alterarHorarioSaida(TimeOfDay data) {
    final _$actionInfo = _$GaragemControllerBaseActionController.startAction(
        name: 'GaragemControllerBase.alterarHorarioSaida');
    try {
      return super.alterarHorarioSaida(data);
    } finally {
      _$GaragemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic alterarVazio(bool value) {
    final _$actionInfo = _$GaragemControllerBaseActionController.startAction(
        name: 'GaragemControllerBase.alterarVazio');
    try {
      return super.alterarVazio(value);
    } finally {
      _$GaragemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaCaminhoes: ${listaCaminhoes},
placa: ${placa},
vaga: ${vaga},
horarioChegada: ${horarioChegada},
horarioSaida: ${horarioSaida},
vazio: ${vazio}
    ''';
  }
}
