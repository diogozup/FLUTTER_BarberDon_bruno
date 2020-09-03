import 'package:barber_don/TerceiraTela.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(""
            "Nossos Servicos",
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
            Image.asset("image/barber_2.jpg"),

            Divider(),

            Container(
              child: Column(
                children: <Widget>[
                  Text(
                      "Corte Masculino Gentleman",
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
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Valor: 30 Reais",
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic
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
                                     builder: (context) => TerceiraTela ()
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
                        Image.asset("image/corte_4.jpg"),

                        Divider(),

                        Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Barba & Bigode",
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
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Valor: 25 Reais",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic
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
                                                builder: (context) => TerceiraTela ()
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
                                    Image.asset("image/pacote_1.jpg"),

                                    Divider(),

                                    Container(
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Barber Shop Pacote completo",
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
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  "Valor: 70 Reais",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontStyle: FontStyle.italic
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
                                                              builder: (context) => TerceiraTela ()
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
                                                Image.asset("image/kids_1.jpg"),

                                                Divider(),

                                                Container(
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text(
                                                        "Corte Kids",
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
                                                        child: Column(
                                                          children: <Widget>[
                                                            Text(
                                                              "Valor: 20 Reais",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontStyle: FontStyle.italic
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
                                                                            builder: (context) => TerceiraTela ()
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

            )


          ],
        ),
      ),

    );
  }
}
