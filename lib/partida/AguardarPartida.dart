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

class AguardarPartida extends StatefulWidget {
  @override
  _AguardarPartidaState createState() => _AguardarPartidaState();
}

class _AguardarPartidaState extends State<AguardarPartida> {
  TextEditingController _controllerCodigo = TextEditingController();

  int num_jogadores = 0;
  bool criador = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Aguardando a partida iniciar..."),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(10, 120, 10, 0),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: Text(
                        "Aguardando jogadores...",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 60, 0, 10),
                          child: Text(
                            "Jogadores:  $num_jogadores",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                            textAlign: TextAlign.center,
                          ),
                          width: 400,
                          height: 151,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(67, 65, 65, 1)),
                        )),
                  ],
                ),
                width: 400,
                height: 280,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(72, 153, 138, 1)),
              ),
            ],
          )),
        ));
  }
}
