
import 'package:cloud_firestore/cloud_firestore.dart';

class Mensagem {

  String _idUsuario;
  String _mensagem;
  String _urlImagem;
  Timestamp _timeStamp; // LEK

  //Define o tipo da mensagem, que pode ser "texto" ou "imagem"
  String _tipo;

  Mensagem();

  Map<String, dynamic> toMap(){

    Map<String, dynamic> map = {
      "idUsuario" : this.idUsuario,
      "mensagem" : this.mensagem,
      "timeStamp" : this.timeStamp,
      "urlImagem" : this.urlImagem,
      "tipo" : this.tipo,
    };

    return map;

  }

  String get tipo => _tipo;

  set tipo(String value) {
    _tipo = value;
  }

  Timestamp get timeStamp => _timeStamp; //LEK

  set timeStamp(Timestamp value) { //LEK
    _timeStamp = value;
  }

  String get urlImagem => _urlImagem;

  set urlImagem(String value) {
    _urlImagem = value;
  }

  String get mensagem => _mensagem;

  set mensagem(String value) {
    _mensagem = value;
  }

  String get idUsuario => _idUsuario;

  set idUsuario(String value) {
    _idUsuario = value;
  }


}