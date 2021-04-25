import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import 'package:p20202cinza/model/Pergunta.dart';

import 'package:p20202cinza/model/Pergunta.dart';

import 'AguardarPartidaAdmin.dart';

class CriarPartida extends StatefulWidget {
  @override
  _CriarPartidaState createState() => _CriarPartidaState();
}

class _CriarPartidaState extends State<CriarPartida> {

  List<Pergunta> _listaPerguntas;
  TextEditingController _controllerTitulo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Criando partida..."),),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
            child: Column(
                children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 16,top:10),
                    child: RaisedButton(
                      child: Text(
                        "Adicionar Pergunta",
                        style: TextStyle(color: Colors.white, fontSize: 20)
                      ),
                        color: Color.fromRGBO(33, 101, 89, 1),
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  onPressed: () {
                  //_atualizarNomeFirestore();
                  }
                ),
              ),

                Padding(
                  padding: EdgeInsets.only(left: 16,top:10),
                  child: RaisedButton(
                      child: Text(
                        "Inciar",
                         style: TextStyle(color: Colors.white, fontSize: 20),),
                      color: Color.fromRGBO(33, 101, 89, 1),
                    padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AguardarPartidaAdmin()
                          )
                      );
                    },
                  ),
                ),
             ]),
              /*Expanded(
                  //child: RefreshIndicator(onRefresh: _refresh,
                    /*child: ListView.builder(
                      //itemCount: _listaPerguntas.length,
                      itemBuilder: builtItem,
                    ),*/
              )*/
            ]),
          ),
      ),
    );
  }
}

Widget builtItem(context, index) {
  // Implementar
}