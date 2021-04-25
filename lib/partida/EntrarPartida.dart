
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

class EntrarPartida extends StatefulWidget {
  @override
  _EntrarPartidaState createState() => _EntrarPartidaState();
}

class _EntrarPartidaState extends State<EntrarPartida> {
  TextEditingController _controllerCodigo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Criando partida..."),
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
                          "Digite o nº da partida:",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(40, 50, 40, 50),
                            child: TextField(
                              controller: _controllerCodigo,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                hintText: "Código da Partida",
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                            width: 400,
                            height: 151,
                            decoration:
                            BoxDecoration(color: Color.fromRGBO(67, 65, 65, 1)),
                          )),
                    ],
                  ),
                  width: 400,
                  height: 280,
                  decoration: BoxDecoration(color: Color.fromRGBO(72, 153, 138, 1)),
                ),
                Padding(
                  padding: EdgeInsets.only(top:100),
                  child: RaisedButton(
                      child: Text(
                        "Inciar",
                        style: TextStyle(color: Colors.white, fontSize: 20),),
                      color: Color.fromRGBO(33, 101, 89, 1),
                      padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AguardarPartida()
                          )
                      );
                    },
                  ),
                ),
              ],
            )
          ),
        ));
  }
}
