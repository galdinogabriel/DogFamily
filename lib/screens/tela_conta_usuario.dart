import 'package:dogfamily/data/data.dart';
import 'package:dogfamily/models/usuario.dart';
import 'package:dogfamily/routes/app_routes.dart';
import 'package:flutter/material.dart';

class TelaContaUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //pegando funcao de referencia da navegacao botao anuncio

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cadastro do cão"),
        centerTitle: true,
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(child: MyCustomForm()),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  //variavel de controle do furmulario
  final _formKey = GlobalKey<FormState>();

  final login = TextEditingController(text: USUARIOS[0].login);
  final senha = TextEditingController(text: USUARIOS[0].senha);
  final email = TextEditingController(text: USUARIOS[0].email);
  final imagemPerfilUrl =
      TextEditingController(text: USUARIOS[0].imagemPerfilURL);
  final endereco = TextEditingController(text: USUARIOS[0].endereco);

  void submitForm(Function salvar) {
    Usuario editUser = Usuario(
      login: login.text,
      senha: senha.text,
      email: email.text,
      imagemPerfilURL: imagemPerfilUrl.text,
      endereco: endereco.text,
      id: USUARIOS[0].id,
    );

    setState(() {
      salvar();
    });
  }

  @override
  Widget build(BuildContext context) {
    final Function salvarDadosUsuario =
        ModalRoute.of(context).settings.arguments;
    return Form(
      key: _formKey,
      child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(143, 148, 251, .2),
                      blurRadius: 10.0,
                      offset: Offset(0, 10),
                    )
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey[100]))),
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Preencha o campo obrigatório';
                          }
                          return null;
                        },
                        controller: login,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Preencha o campo obrigatório';
                          }
                          return null;
                        },
                        controller: senha,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Digite sua senha",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Preencha o campo obrigatório';
                            }
                            return null;
                          },
                          controller: email,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Digite seu email",
                              hintStyle: TextStyle(color: Colors.grey[400])),
                        )),
                    Container(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Preencha o campo obrigatório';
                            }
                            return null;
                          },
                          controller: imagemPerfilUrl,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Link da foto de perfil",
                              hintStyle: TextStyle(color: Colors.grey[400])),
                        )),
                    Container(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Preencha o campo obrigatório';
                            }
                            return null;
                          },
                          controller: endereco,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Endereço",
                              hintStyle: TextStyle(color: Colors.grey[400])),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (_formKey.currentState.validate()) {
                    salvarDadosUsuario();
                    submitForm(salvarDadosUsuario);
                    Navigator.of(context).pushNamed(AppRoutes.FEED);
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(143, 148, 251, 1),
                        Color.fromRGBO(143, 148, 251, .6),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Salvar dados",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
