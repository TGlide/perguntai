import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Home.dart';
import 'Login.dart';
import 'package:p20202cinza/partida/Jogar.dart';
import 'RouteGenerator.dart';
import 'dart:io';


final ThemeData temaIOS = ThemeData(
    primaryColor: Color.fromRGBO(72, 153, 138, 1),
    accentColor: Color.fromRGBO(33, 101, 89, 1)
);

final ThemeData temaPadrao = ThemeData(
  primaryColor: Color.fromRGBO(72, 153, 138, 1),
  accentColor: Color.fromRGBO(33, 101, 89, 1),
);


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


