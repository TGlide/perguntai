import 'package:cloud_firestore/cloud_firestore.dart';
class Chat {

  String _idRemetente;
  String _idPartida;
  String _nome;
  String _mensagem;
  Timestamp _timeStamp;
  String _tipoMensagem;//texto ou imagem


  Chat();

  salvar() async {
    /*

    + conversas
      + jamilton
          + ultima_conversa
            + jose
              idRe
              idDes
              ...

    */
    Firestore db = Firestore.instance;
    await db.collection("partidas")
        .document( this.idRemetente )
        .collection( "ultima_partida" )
        .document( this._idPartida )
        .setData( this.toMap() );

  }

  Map<String, dynamic> toMap(){

    Map<String, dynamic> map = {
      "idRemetente"     : this.idRemetente,
      "idPartida"  : this.idPartida,
      "nome"            : this.nome,
      "mensagem"        : this.mensagem,
      "timeStamp"       : this.timeStamp,
      "tipoMensagem"    : this.tipoMensagem,
    };

    return map;

  }


  Timestamp get timeStamp => _timeStamp; //LEK

  set timeStamp(Timestamp value) { //LEK
    _timeStamp = value;
  }

  String get idRemetente => _idRemetente;

  set idRemetente(String value) {
    _idRemetente = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  String get mensagem => _mensagem;



  set mensagem(String value) {
    _mensagem = value;
  }

  String get idPartida => _idPartida;

  set idPartida(String value) {
    _idPartida = value;
  }

  String get tipoMensagem => _tipoMensagem;

  set tipoMensagem(String value) {
    _tipoMensagem = value;
  }

}