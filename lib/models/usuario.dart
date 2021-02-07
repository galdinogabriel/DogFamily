import 'package:dogfamily/models/cao.dart';
import 'package:flutter/foundation.dart';

class Usuario {
  int id;
  String login;
  String senha;
  String email;
  String imagemPerfilURL;
  String endereco;

  //construtor nomedado
  Usuario({
    @required this.id,
    @required this.login,
    @required this.senha,
    @required this.email,
    @required this.imagemPerfilURL,
    @required this.endereco,
  });
}
