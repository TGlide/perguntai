import 'package:p20202cinza/model/Resposta.dart';
import 'package:p20202cinza/model/Usuario.dart';

class Jogador {

  Usuario _usuario;
  List<Resposta> _respostasEscolhidas;
  int _pontos;

  Jogador();

  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = {
      "usuario" : this._usuario,
      "respostasEscolhidas" : this._respostasEscolhidas,
      "pontos" : this._pontos
    };
    return map;
  }

  int get pontos => _pontos;

  set pontos(int value) {
    _pontos = value;
  }

  List<Resposta> get respostasEscolhidas => _respostasEscolhidas;

  set respostasEscolhidas(List<Resposta> value) {
    _respostasEscolhidas = value;
  }

  Usuario get usuario => _usuario;

  set usuario(Usuario value) {
    _usuario = value;
  }
}