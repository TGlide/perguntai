import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Home.dart';
import 'Login.dart';
import 'RouteGenerator.dart';
import 'dart:io';


final ThemeData temaIOS = ThemeData(
    primaryColor: Colors.grey[200],
    accentColor: Color(0xff25D366)
);

final ThemeData temaPadrao = ThemeData(
  primaryColor: Color(0xff075E54),
  accentColor: Color(0xff25D366),
);

/*
Tarefas para os alunos:
1) por este App executando e testar bem
2) fazer upload de imagens e outros documentos nas mensagens, opcao de abrir PDF ou URL etc
3) notificar usuario de novas mensagens
*/



void main(){
  runApp(MaterialApp(
    home: Login(),
    theme: Platform.isIOS ? temaIOS : temaPadrao,
    initialRoute: "/",
    onGenerateRoute: RouteGenerator.generateRoute,
    debugShowCheckedModeBanner: false,
  ));

}


// teste de BD
void xmain() {
  WidgetsFlutterBinding.ensureInitialized(); // fundamental essa linha
  Firestore.instance
      .collection("jogador")
      .document("pontuacao")
      .setData({"fase1":"180","fase2":"123","fase3":"456"});
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


