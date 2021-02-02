import 'package:dogfamily/models/cao.dart';
import 'package:flutter/foundation.dart';

class Usuario {
  String login;
  String senha;
  String email;
  String imagemPerfilURL;
  String endereco;
  Cao cao;

  //construtor nomedado
  Usuario({
    @required this.login,
    @required this.senha,
    @required this.email,
    @required this.imagemPerfilURL,
    @required this.endereco,
    this.cao,
  });
}
