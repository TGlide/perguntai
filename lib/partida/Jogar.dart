import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title:Text("Pergunta Aí"),
        backgroundColor: Color(0xff6DDCCF),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
                child: RaisedButton(
                  onPressed: () => {},
                  color: Color(0xff6DDCCF),
                  child: Text(
                    "Entrar numa partida",
                    style: TextStyle(fontSize: 40.0, color: Color(0xff2f2f2f)),
                    textAlign: TextAlign.center,
                  ),

                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20.0,60.0,20.0,40.0),
                child: RaisedButton(
                  onPressed: () => {},
                  color: Color(0xff6DDCCF),
                  child: Text(
                    "Criar partida",
                    style: TextStyle(fontSize: 40.0, color: Color(0xff2f2f2f)),
                  ),

                ),
              ),
            ],
          ),


        ],
      )
    );
  }
}