import 'package:flutter/material.dart';

class AbaJogar extends StatefulWidget {
  @override
  _AbaJogarState createState() => _AbaJogarState();
}

class _AbaJogarState extends State<AbaJogar> {
  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(width: 500.0,
                  height: 150.0,
                  child: Padding(
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
                ),


                Container(
                  width: 500,
                  height: 200.0,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20.0,50.0,20.0,10.0),
                    child: RaisedButton(
                      onPressed: () => {},
                      color: Color(0xff6DDCCF),
                      child: Text(
                        "Criar uma partida",
                        style: TextStyle(fontSize: 40.0, color: Color(0xff2f2f2f)),
                        textAlign: TextAlign.center,
                      ),

                    ),
                  ),
                )
              ],
            );
  }
}