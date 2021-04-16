class Resposta {

  String _idResposta;
  String _titulo;
  bool _correta;

  Resposta();

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "titulo": this._titulo,
      "correta": this._correta
    };

    return map;
  }

  String get titulo => _titulo;

  set titulo(String value) {
    _titulo = value;
  }

  String get idResposta => _idResposta;

  set idResposta(String value) {
    _idResposta = value;
  }

  bool get correta => _correta;

  set correta(bool value) {
    _correta = value;
  }
}

