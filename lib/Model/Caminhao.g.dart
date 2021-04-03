// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Caminhao.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Caminhao on CaminhaoBase, Store {
  final _$placaAtom = Atom(name: 'CaminhaoBase.placa');

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

  final _$vagaAtom = Atom(name: 'CaminhaoBase.vaga');

  @override
  String get vaga {
    _$vagaAtom.reportRead();
    return super.vaga;
  }

  @override
  set vaga(String value) {
    _$vagaAtom.reportWrite(value, super.vaga, () {
      super.vaga = value;
    });
  }

  final _$horarioChegadaAtom = Atom(name: 'CaminhaoBase.horarioChegada');

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

  final _$horarioSaidaAtom = Atom(name: 'CaminhaoBase.horarioSaida');

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

  final _$vazioAtom = Atom(name: 'CaminhaoBase.vazio');

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

  final _$livreAtom = Atom(name: 'CaminhaoBase.livre');

  @override
  bool get livre {
    _$livreAtom.reportRead();
    return super.livre;
  }

  @override
  set livre(bool value) {
    _$livreAtom.reportWrite(value, super.livre, () {
      super.livre = value;
    });
  }

  final _$CaminhaoBaseActionController = ActionController(name: 'CaminhaoBase');

  @override
  dynamic setPlaca(String value) {
    final _$actionInfo = _$CaminhaoBaseActionController.startAction(
        name: 'CaminhaoBase.setPlaca');
    try {
      return super.setPlaca(value);
    } finally {
      _$CaminhaoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setVaga(String value) {
    final _$actionInfo = _$CaminhaoBaseActionController.startAction(
        name: 'CaminhaoBase.setVaga');
    try {
      return super.setVaga(value);
    } finally {
      _$CaminhaoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setHorarioChegada(String value) {
    final _$actionInfo = _$CaminhaoBaseActionController.startAction(
        name: 'CaminhaoBase.setHorarioChegada');
    try {
      return super.setHorarioChegada(value);
    } finally {
      _$CaminhaoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setHorarioSaida(String value) {
    final _$actionInfo = _$CaminhaoBaseActionController.startAction(
        name: 'CaminhaoBase.setHorarioSaida');
    try {
      return super.setHorarioSaida(value);
    } finally {
      _$CaminhaoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setVazio(bool value) {
    final _$actionInfo = _$CaminhaoBaseActionController.startAction(
        name: 'CaminhaoBase.setVazio');
    try {
      return super.setVazio(value);
    } finally {
      _$CaminhaoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLivre(bool value) {
    final _$actionInfo = _$CaminhaoBaseActionController.startAction(
        name: 'CaminhaoBase.setLivre');
    try {
      return super.setLivre(value);
    } finally {
      _$CaminhaoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
placa: ${placa},
vaga: ${vaga},
horarioChegada: ${horarioChegada},
horarioSaida: ${horarioSaida},
vazio: ${vazio},
livre: ${livre}
    ''';
  }
}
