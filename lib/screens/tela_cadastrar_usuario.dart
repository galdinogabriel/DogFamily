import 'package:dogfamily/widgets/anuncios_caes.dart';
import 'package:dogfamily/widgets/barra_filtro_raca.dart';
import 'package:flutter/material.dart';
import 'package:dogfamily/widgets/drawer_customizado.dart';
import 'package:dogfamily/widgets/item_card_widget.dart';
import 'package:dogfamily/widgets/barra_filtro_raca.dart';
import 'package:dogfamily/widgets/botao_anunciar_cao.dart';
import 'package:flutter/material.dart';

void main() => runApp(TelaCadastroUsuario());
class TelaCadastroUsuario extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cadastro de usuário',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Cadastro(),);   
  }
}

class Cadastro extends StatefulWidget{
  CadastroState createState() => CadastroState();
}

class CadastroState extends State{
final emailcontroller = TextEditingController();
final namecontroller = TextEditingController();
final enderecocontroller = TextEditingController();
final senhacontroller = TextEditingController();

Widget build(BuildContext context){
  final emailField = TextField(
    obscureText: false,
    controller: emailcontroller,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20, 15.0),
      hintText: "Digite seu email",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );
    final name = TextField(
    obscureText: false,
    controller: namecontroller,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20, 15.0),
      hintText: "Digite seu nome",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );
    final enderecoField = TextField(
    obscureText: false,
    controller: enderecocontroller,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20, 15.0),
      hintText: "Digite seu endereço",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );
    final senhaField = TextField(
    obscureText: true,
    controller: senhacontroller,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20, 15.0),
      hintText: "Digite sua senha",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );


    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.pink,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(50.0, 15.0, 50.0, 15.0),

      onPressed: (){
        User user = User();
        user.email = emailcontroller.text;
        user.name = namecontroller.text;
        user.endereco = enderecocontroller.text;
        user.senha = senhacontroller.text;

        showAlertDialog(context,user);
      },
      child: Text("Submit", textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white),),
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
                Text("Formulario de cadastro", style: TextStyle(color: Colors.red)),

                SizedBox(height: 45.0),
                emailField,

                SizedBox(height: 25.0),
                name,

                SizedBox(height: 25.0),
                enderecoField,

                SizedBox(height: 25.0),
                senhaField,

                SizedBox(height: 35.0,),
                loginButton,
                SizedBox(height: 15.0,),
              ],),),),),);
  }
}

showAlertDialog(BuildContext context, User user){
  Widget gotIt = FlatButton(
    child: Text("Ir"),
    onPressed: (){
Navigator.of(context, rootNavigator: true).pop('alert');
  },
  );
  AlertDialog alert = AlertDialog(
    title: Text("Meu Perfil"),
    content: Text(user.email+"\n"+user.name+"\n"+user.endereco+"\n"+user.senha),
    actions: [
      gotIt,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
    return alert;
    },
  );
  }

//model class
class User{
  String email;
  String name;
  String endereco;
  String senha;
}