import 'package:dogfamily/models/usuario.dart';
import 'package:flutter/cupertino.dart';

class Anuncio {
  Usuario anunciante;
  DateTime quandoCriado;
  String descricao;
  Anuncio({
    @required this.anunciante,
    @required this.quandoCriado,
    @required this.descricao,
  });
}
