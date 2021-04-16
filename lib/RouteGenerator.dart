import 'package:flutter/material.dart';
import 'package:p20202cinza/partida/CriarPartida.dart';

import 'Cadastro.dart';
import 'Configuracoes.dart';
import 'Home.dart';
import 'Login.dart';
import 'Mensagens.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings){

    final args = settings.arguments;

    switch( settings.name ){
      case "/" :
        return MaterialPageRoute(
          builder: (_) => Login()
        );
      case "/login" :
        return MaterialPageRoute(
            builder: (_) => Login()
        );
      case "/cadastro" :
        return MaterialPageRoute(
            builder: (_) => Cadastro()
        );
      case "/home" :
        return MaterialPageRoute(
            builder: (_) => Home()
        );
      case "/configuracoes" :
        return MaterialPageRoute(
            builder: (_) => Configuracoes()
        );
      case "/mensagens" :
        return MaterialPageRoute(
            builder: (_) => Mensagens(args)
        );
      case "/partida/criar" :
        return MaterialPageRoute(
            builder: (_) => CriarPartida()
        );
      default:
        _erroRota();
    }

  }

  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(
      builder: (_){
        return Scaffold(
          appBar: AppBar(title: Text("Tela não encontrada!"),),
          body: Center(
            child: Text("Tela não encontrada!"),
          ),
        );
      }
    );
  }

}