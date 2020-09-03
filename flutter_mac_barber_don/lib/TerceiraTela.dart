import 'package:barber_don/ReservaTela.dart';
import 'package:flutter/material.dart';

class TerceiraTela extends StatefulWidget {
  @override
  _TerceiraTelaState createState() => _TerceiraTelaState();
}

class _TerceiraTelaState extends State<TerceiraTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
            "Escolha seu Barber",
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("image/barbeiro_1.jpg"),

            Divider(),

            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "Mauricio Arandir",
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        decorationStyle: TextDecorationStyle.solid,
                        color: Colors.black
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(left: 40),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Nosso Barber Veterano com 20 de experiencia em barbershop.",
                          style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                          ),
                        ),

                        Divider(),

                        Container(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color(0xff1a0f00),
                            borderRadius: BorderRadius.circular(
                                60
                            ),
                          ),
                          child: FlatButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReservaTela ()
                                ),
                              );
                            },
                            child: Text(
                              "Agendar",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Divider(),

                  Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset("image/barbeiro_2.jpg"),

                        Divider(),

                        Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Junior Braga",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontStyle: FontStyle.italic,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.black,
                                    decorationStyle: TextDecorationStyle.solid,
                                    color: Colors.black
                                ),
                              ),

                              Divider(),

                              Container(
                                padding: EdgeInsets.only(left: 40, right: 40),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "O dinamico experiente barber. 18 anos de profissão.",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Divider(),

                                    Container(
                                      height: 50,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        color: Color(0xff1a0f00),
                                        borderRadius: BorderRadius.circular(
                                            60
                                        ),
                                      ),
                                      child: FlatButton(
                                        onPressed: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => ReservaTela ()
                                            ),
                                          );
                                        },
                                        child: Text(
                                          "Agendar",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontStyle: FontStyle.italic,
                                              color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(),

                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset("image/barbeiro_3.jpg"),

                                    Divider(),

                                    Container(
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Bruno Souza",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontStyle: FontStyle.italic,
                                                decoration: TextDecoration.underline,
                                                decorationColor: Colors.black,
                                                decorationStyle: TextDecorationStyle.solid,
                                                color: Colors.black
                                            ),
                                          ),

                                          Divider(),

                                          Container(
                                            padding: EdgeInsets.only(left: 40, right: 40),
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  "Bruno tem 15 anos de experiencia como barber.",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),

                                                Divider(),

                                                Container(
                                                  height: 50,
                                                  width: 250,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff1a0f00),
                                                    borderRadius: BorderRadius.circular(
                                                        60
                                                    ),
                                                  ),
                                                  child: FlatButton(
                                                    onPressed: (){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) => ReservaTela ()
                                                        ),
                                                      );
                                                    },
                                                    child: Text(
                                                      "Agendar",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontStyle: FontStyle.italic,
                                                          color: Colors.white
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          Divider(),

                                          Container(
                                            child: Column(
                                              children: <Widget>[
                                                Image.asset("image/barbeiro_5.jpg"),

                                                Divider(),

                                                Container(
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text(
                                                        "Don Carlos",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            fontStyle: FontStyle.italic,
                                                            decoration: TextDecoration.underline,
                                                            decorationColor: Colors.black,
                                                            decorationStyle: TextDecorationStyle.solid,
                                                            color: Colors.black
                                                        ),
                                                      ),

                                                      Divider(),

                                                      Container(
                                                        padding: EdgeInsets.only(left: 40, right: 40),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Text(
                                                              "Carlos possui mais de 10 anos de experiencia em corte e barba.",
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                                fontStyle: FontStyle.italic,
                                                              ),
                                                            ),

                                                            Divider(),

                                                            Container(
                                                              height: 50,
                                                              width: 250,
                                                              decoration: BoxDecoration(
                                                                color: Color(0xff1a0f00),
                                                                borderRadius: BorderRadius.circular(
                                                                    60
                                                                ),
                                                              ),
                                                              child: FlatButton(
                                                                onPressed: (){
                                                                  Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder: (context) => ReservaTela ()
                                                                    ),
                                                                  );
                                                                },
                                                                child: Text(
                                                                  "Agendar",
                                                                  style: TextStyle(
                                                                      fontSize: 20,
                                                                      fontStyle: FontStyle.italic,
                                                                      color: Colors.white
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),



                                                    ],
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

