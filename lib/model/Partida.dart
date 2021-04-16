import 'package:p20202cinza/model/Usuario.dart';
import 'package:p20202cinza/model/Pergunta.dart';

class Partida {

  String _idPartida;
  List<Usuario> _jogadores;
  List<Pergunta> _perguntas;
  String _idChat;

  Partida();

  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = {
      "jogadores" : this._jogadores,
      "perguntas" : this._perguntas,
      "id_chat" : this._idChat
    };
    return map;
  }

  String get idChat => _idChat;

  set idChat(String value) {
    _idChat = value;
  }

  List<Pergunta> get perguntas => _perguntas;

  set perguntas(List<Pergunta> value) {
    _perguntas = value;
  }

  List<Usuario> get jogadores => _jogadores;

  set jogadores(List<Usuario> value) {
    _jogadores = value;
  }

  String get idPartida => _idPartida;

  set idPartida(String value) {
    _idPartida = value;
  }
}