import 'package:mobx/mobx.dart';
part 'Caminhao.g.dart';

class Caminhao extends CaminhaoBase with _$Caminhao{

  @observable
  String placa;

  @observable
  String vaga;

  @observable
  String horarioChegada;

  @observable
  String horarioSaida;

  @observable
  bool vazio;

  @observable
  bool livre;

  Caminhao(this.placa, this.vaga, this.horarioChegada, this.horarioSaida, this.vazio, this.livre) : super(placa, vaga, horarioChegada, horarioSaida, vazio, livre);
}

abstract class CaminhaoBase with Store {

  CaminhaoBase(this.placa, this.vaga, this.horarioChegada, this.horarioSaida, this.vazio, this.livre);

  @observable
  String placa;

  @observable
  String vaga;

  @observable
  String horarioChegada;

  @observable
  String horarioSaida;

  @observable
  bool vazio;

  @observable
  bool livre;

  @action
  setPlaca(String value) {
    placa = value;
  }

  @action
  setVaga(String value) {
    vaga = value;
  }

  @action
  setHorarioChegada(String value) {
    horarioChegada = value;
  }

  @action
  setHorarioSaida(String value) {
    horarioSaida = value;
  }

  @action
  setVazio(bool value) {
    vazio = value;
  }

  @action
  setLivre(bool value) {
    livre = value;
  }
}