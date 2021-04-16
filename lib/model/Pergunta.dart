class Pergunta {

  String _idPergunta;
  String _titulo;
  List<String> _respostas;

  Pergunta();

  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = {
      "titulo" : this._titulo,
      "respostas" : this._respostas
    };
    return map;
  }

  List<String> get respostas => _respostas;

  set respostas(List<String> value) {
    _respostas = value;
  }

  String get titulo => _titulo;

  set titulo(String value) {
    _titulo = value;
  }

  String get idPergunta => _idPergunta;

  set idPergunta(String value) {
    _idPergunta = value;
  }
}