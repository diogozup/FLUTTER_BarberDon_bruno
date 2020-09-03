import 'package:flutter/material.dart';

class ReservaTela extends StatefulWidget {
  @override
  _ReservaTelaState createState() => _ReservaTelaState();
}

class _ReservaTelaState extends State<ReservaTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reserva",
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              color: Colors.white
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              print("acao:menu");
            },
          ),
        ],
        backgroundColor: Color(0xff1a0f00),
      ),
    );
  }
}
