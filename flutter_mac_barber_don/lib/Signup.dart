import 'dart:io';
import 'package:barber_don/Home.dart';
import 'package:barber_don/model/Usuario.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  String _mensagemErro = "";
  bool _mensagemErroIsSucess = false;
  String nome;
  String email;
  String senha;

//!------------------------------------------------------------ FUNCOES
  // ignore: deprecated_member_use
  final databaseReference = Firestore.instance;
  void _saveUser() async {
    DocumentReference ref = await databaseReference
        .collection("users")
        .add({'userName': nome, 'userEmail': email, 'userPassword': senha});
    print(ref.documentID);
  }

  void _goToScreenHome() {
    // sleep(const Duration(seconds: 1));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home(nome, email)),
    );
  }

  _validarCampos() {
    nome = _controllerNome.text;
    // nome = "nome";
    email = _controllerEmail.text;
    senha = _controllerSenha.text;

    if (nome.isNotEmpty) {
      if (email.isNotEmpty && email.contains("@")) {
        if (senha.isNotEmpty && senha.length > 6) {
          setState(() {
            _mensagemErro = "";
          });

          Usuario usuario = Usuario();
          usuario.nome = nome;
          usuario.email = email;
          usuario.senha = senha;

          _cadastrarUsuario(usuario);
        } else {
          setState(() {
            _mensagemErroIsSucess = false;
            _mensagemErro = "Preencha a Senha! digite mais que 6 caracteres";
          });
        }
      } else {
        setState(() {
          _mensagemErroIsSucess = false;
          _mensagemErro = "Preencha o E-mail utilizando o @";
        });
      }
    } else {
      setState(() {
        _mensagemErroIsSucess = false;
        _mensagemErro = "Preencha o Nome";
      });
    }
  }

  _cadastrarUsuario(Usuario usuario) {
    FirebaseAuth auth = FirebaseAuth.instance;

    auth
        .createUserWithEmailAndPassword(
            email: usuario.email, password: usuario.senha)
        .then((firebaseUser) {
      setState(() {
        _mensagemErroIsSucess = true;
        _mensagemErro = "Sucesso ao cadastrar";
        //sleep(const Duration(seconds: 1));
      });
      //Escrever Firebase BD
      _saveUser();
      // Navegar para o login
      _goToScreenHome();
    }).catchError((error) {
      print("erro app: " + error.toString());
      setState(() {
        _mensagemErroIsSucess = false;
        _mensagemErro = error.toString();
        //_mensagemErro =
        "Erro ao cadastrar usuario, verifique os campos e tente novamente!";
      });
    });
  }

  _loginUsuario(Usuario usuario) {
    FirebaseAuth auth = FirebaseAuth.instance;

    auth
        .signInWithEmailAndPassword(
            email: usuario.email, password: usuario.senha)
        .then((firebaseUser) {
      setState(() {
        _mensagemErroIsSucess = true;
        _mensagemErro = "Login com sucesso";
      });
      // Navegar para o login after 1 sec sleep

      _goToScreenHome();
    }).catchError((error) {
      print("erro app: " + error.toString());
      setState(() {
        _mensagemErroIsSucess = false;
        _mensagemErro = error.toString();
        //_mensagemErro =
        "Erro ao cadastrar usuario, verifique os campos e tente novamente!";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              //width: 200,
              //height: 160
              width: MediaQuery.of(context).size.width * 0.40,
              height: MediaQuery.of(context).size.height * 0.30,
              alignment: Alignment(0.0, 2.30),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("image/barbeiro_7.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              // child: Container(
              //   height: 56,
              //   width: 56,
              //   alignment: Alignment.center,
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.topLeft,
              //       end: Alignment.bottomRight,
              //       stops: [0.3, 1.0],
              //       colors: [
              //         Color(0xff1a0f00),
              //         Colors.red,
              //       ],
              //     ),
              //     border: Border.all(
              //       width: 4.0,
              //       color: const Color(0xff1a0f00),
              //     ),
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(56),
              //     ),
              //   ),
              //   child: SizedBox.expand(
              //     child: FlatButton(
              //       child: Icon(
              //         IconData(
              //           57669,
              //           fontFamily: "MaterialIcons",
              //         ),
              //         color: Colors.white,
              //       ),
              //       onPressed: () {},
              //     ),
              //   ),
              // ),
            ),
            SizedBox(
              height: 80,
            ),
            TextFormField(
              controller: _controllerNome,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _controllerEmail,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _controllerSenha,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [Color(0xff1a0f00), Colors.red],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    _validarCampos();
                  },
                ),
              ),
            ),
            Center(
              child: Text(
                _mensagemErro,
                style: TextStyle(
                  color: _mensagemErroIsSucess == false
                      ? Colors.red
                      : Colors.green,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Cancelar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
