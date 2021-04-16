import 'package:flutter/material.dart';
import 'package:p20202cinza/partida/CriarPartida.dart';

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
                Container(
                  width: 500,
                  height: 200.0,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20.0,50.0,20.0,10.0),
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CriarPartida()
                            )
                        );
                      },
                      color: Color.fromRGBO(72, 153, 138, 1),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

                      child: Text(
                        "Criar uma partida",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),

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
                      color: Color.fromRGBO(72, 153, 138, 1),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

                      child: Text(
                        "Entrar em\numa partida",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),

                        textAlign: TextAlign.center,
                      ),

                    ),
                  ),
                )
              ],
            );
  }
}