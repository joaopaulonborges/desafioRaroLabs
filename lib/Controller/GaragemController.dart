import 'package:desafiorarolabs/Model/Caminhao.dart';
import 'package:desafiorarolabs/Widget/Alerta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'GaragemController.g.dart';

class GaragemController = GaragemControllerBase with _$GaragemController;

abstract class GaragemControllerBase with Store {
  @observable
  ObservableList<Caminhao> listaCaminhoes = new List<Caminhao>().asObservable();

  @observable
  String placa = "";

  @observable
  int vaga = 0;

  @observable
  String horarioChegada = "";

  @observable
  String horarioSaida = "";

  @observable
  bool vazio = false;

  @action
  adicionarCaminhaoLista(Caminhao value) {
    listaCaminhoes.add(value);
  }

  @action
  alterarPlaca(String value) {
    placa = value;
  }

  @action
  alterarVaga(int value) {
    vaga = value;
  }

  @action
  alterarHorarioChegada(TimeOfDay data) {
    if(data != null){
      horarioChegada = (data.hour < 10 ? "0" + data.hour.toString() : data.hour.toString()) + ":" + (data.minute < 10 ? "0" + data.minute.toString() : data.minute.toString());
    }
    else{
      horarioChegada = "";
    }
  }

  @action
  alterarHorarioSaida(TimeOfDay data) {
    if(data != null){
      horarioSaida = (data.hour < 10 ? "0" + data.hour.toString() : data.hour.toString()) + ":" + (data.minute < 10 ? "0" + data.minute.toString() : data.minute.toString());
    }
    else{
      horarioSaida = "";
    }
  }

  @action
  alterarVazio(bool value) {
    vazio = value;
  }

  carregarVagasGaragem(){
    listaCaminhoes = new List<Caminhao>().asObservable();
    String hora = carregarHorario();
    Caminhao caminhao = new Caminhao("ABC1234", (listaCaminhoes.length+1).toString(), "08:45", "14:30", true, verificarHoraVaga(hora, "14:30"));
    adicionarCaminhaoLista(caminhao);
    Caminhao caminhao2 = new Caminhao("45H2NH2", (listaCaminhoes.length+1).toString(), "16:25", "21:24", true, verificarHoraVaga(hora, "21:24"));
    adicionarCaminhaoLista(caminhao2);
    Caminhao caminhao3 = new Caminhao("98PO4K2", (listaCaminhoes.length+1).toString(), "07:28", "08:12", false, verificarHoraVaga(hora, "08:12"));
    adicionarCaminhaoLista(caminhao3);
    Caminhao caminhao4 = new Caminhao("C32NH90", (listaCaminhoes.length+1).toString(), "15:10", "18:28", true, verificarHoraVaga(hora, "18:28"));
    adicionarCaminhaoLista(caminhao4);
    Caminhao caminhao5 = new Caminhao("PO8JK82", (listaCaminhoes.length+1).toString(), "09:50", "13:30", false, verificarHoraVaga(hora, "13:30"));
    adicionarCaminhaoLista(caminhao5);
    Caminhao caminhao6 = new Caminhao("U56JK90", (listaCaminhoes.length+1).toString(), "11:45", "14:56", false, verificarHoraVaga(hora, "14:56"));
    adicionarCaminhaoLista(caminhao6);
    Caminhao caminhao7 = new Caminhao("FD3T387", (listaCaminhoes.length+1).toString(), "08:38", "10:21", false, verificarHoraVaga(hora, "10:21"));
    adicionarCaminhaoLista(caminhao7);
    Caminhao caminhao8 = new Caminhao("MN90C02", (listaCaminhoes.length+1).toString(), "07:23", "09:37", true, verificarHoraVaga(hora, "09:37"));
    adicionarCaminhaoLista(caminhao8);
    Caminhao caminhao9 = new Caminhao("45MB09U", (listaCaminhoes.length+1).toString(), "12:18", "19:10", false, verificarHoraVaga(hora, "19:10"));
    adicionarCaminhaoLista(caminhao9);
  }

  String carregarHorario(){
    DateTime dateTime = DateTime.now();
    String data = "";
    if(dateTime.hour < 10){
      data += "0"+dateTime.hour.toString();
    }
    else{
      data += dateTime.hour.toString();
    }
    if(dateTime.minute < 10){
      data += ":0"+dateTime.minute.toString();
    }
    else{
      data += ":"+dateTime.minute.toString();
    }
    return data;
  }

  bool verificarHoraVaga(String hora, String horarioSaida){
    int horaAtual, minutoAtual, horaSaida, minutoSaida;
    horaAtual = int.parse(hora.substring(0,2));
    minutoAtual = int.parse(hora.substring(3,5));
    horaSaida = int.parse(horarioSaida.substring(0,2));
    minutoSaida = int.parse(horarioSaida.substring(3,5));
    if(horaAtual>horaSaida){
      return true;
    }
    else
      if(horaAtual == horaSaida){
        if(minutoAtual >= minutoSaida){
          return true;
        }
        else{
          return false;
        }
      }
    else{
      return false;
    }
  }

  bool adicionarCaminhaoVaga(BuildContext context){
    String erro = validaCadastroCaminhaoVaga();
    String hora = carregarHorario();
    if(erro != ""){
      Alerta.exibirAlert(context, "Cadastro de caminhão", erro);
      return false;
    }
    else{
      listaCaminhoes[vaga-1] = new Caminhao(placa, vaga.toString(), horarioChegada, horarioSaida, vazio, verificarHoraVaga(hora, horarioSaida));
      return true;
    }
  }

  String validaCadastroCaminhaoVaga() {
    if(placa == "" || placa.length != 7){
      return "A placa do caminhão deve conter 7 caracteres";
    }
    else
      if(horarioChegada == ""){
        return "Preencha o horário de chegada do caminhão";
      }
      else
        if(horarioSaida == ""){
          return "Preencha o horário de saída do caminhão";
        }
      else
        if(verificarHoraVaga(horarioChegada, horarioSaida)){
          return "O horário de saída precisa ser maior ou igual ao horário de chegada";
        }
    return "";
  }
}