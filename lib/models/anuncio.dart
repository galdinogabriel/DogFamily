import 'package:dogfamily/models/cao.dart';
import 'package:dogfamily/models/usuario.dart';
import 'package:flutter/cupertino.dart';

class Anuncio {
  int id;
  Usuario anunciante;
  Cao cao;
  DateTime quandoCriado;
  String descricao;
  Anuncio({
    @required this.cao,
    @required this.id,
    @required this.anunciante,
    @required this.quandoCriado,
    @required this.descricao,
  });
}
