import 'package:dogfamily/routes/app_routes.dart';
import 'package:flutter/material.dart';

class TelaCadastroUsuario extends StatefulWidget {
  CadastroState createState() => CadastroState();
}

class CadastroState extends State {
  final emailcontroller = TextEditingController();
  final namecontroller = TextEditingController();
  final enderecocontroller = TextEditingController();
  final senhacontroller = TextEditingController();

  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      controller: emailcontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20, 15.0),
          hintText: "Digite seu email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );
    final name = TextField(
      obscureText: false,
      controller: namecontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20, 15.0),
          hintText: "Digite seu nome",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );
    final enderecoField = TextField(
      obscureText: false,
      controller: enderecocontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20, 15.0),
          hintText: "Digite seu endereço",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );
    final senhaField = TextField(
      obscureText: true,
      controller: senhacontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20, 15.0),
          hintText: "Digite sua senha",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.pink,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(50.0, 15.0, 50.0, 15.0),
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.FEED);
        },
        child: Text(
          "Submit",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text("Cadastro de Usuário")),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Novo Usuário", style: TextStyle(color: Colors.grey[500])),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                name,
                SizedBox(height: 25.0),
                enderecoField,
                SizedBox(height: 25.0),
                senhaField,
                SizedBox(
                  height: 35.0,
                ),
                loginButton,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
