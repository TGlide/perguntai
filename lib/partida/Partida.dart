import 'package:p20202cinza/model/Jogador.dart';
import 'package:p20202cinza/partida/AguardarPartida.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import 'package:p20202cinza/model/Pergunta.dart';

import 'package:p20202cinza/model/Pergunta.dart';

class Partida extends StatefulWidget {
  @override
  _PartidaState createState() => _PartidaState();
}

class _PartidaState extends State<Partida> {
  TextEditingController _controllerCodigo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pergunta Aí"),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(child: Padding(
                padding: EdgeInsets.only(top: 0),
                child: RaisedButton(
                  child: Text(
                    "Chat",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color:Color.fromRGBO(33, 101, 89, 1),
                  onPressed: () {},
                ),
              ),
                width: 100,
                height: 50,
                decoration: BoxDecoration(color: Color.fromRGBO(67, 65, 65, 1)),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 120, bottom: 120),
                  child: Text("Qual a capital da Islândia?",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    textAlign: TextAlign.center,
                  )),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: RaisedButton(
                    child: Text(
                      "Reyjavik",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Color.fromRGBO(72, 153, 138, 1.0),
                    onPressed: () {},
                  ),
                ),
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Color.fromRGBO(67, 65, 65, 1)),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: RaisedButton(
                    child: Text(
                      "Oslo",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Color.fromRGBO(72, 153, 138, 1.0),
                    onPressed: () {},
                  ),
                ),
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Color.fromRGBO(67, 65, 65, 1)),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: RaisedButton(
                    child: Text(
                      "Copenhagen",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Color.fromRGBO(72, 153, 138, 1.0),
                    onPressed: () {},
                  ),
                ),
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Color.fromRGBO(67, 65, 65, 1)),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: RaisedButton(
                    child: Text(
                      "Estocolmo",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color:Color.fromRGBO(72, 153, 138, 1.0),
                    onPressed: () {},
                  ),
                ),
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Color.fromRGBO(67, 65, 65, 1)),
              )
            ],
          )),
        ));
  }
}
