import 'package:dogfamily/models/usuario.dart';
import 'package:flutter/foundation.dart';

class Cao {
  String raca;
  int idade;
  String imageUrl;
  bool temDeficienciaFisica;
  bool temDoenca;
  bool usaRemedioControlado;
  Porte porte;

  //construtor nomeado
  Cao({
    @required this.raca,
    @required this.idade,
    @required this.imageUrl,
    @required this.temDeficienciaFisica,
    @required this.temDoenca,
    @required this.usaRemedioControlado,
    @required this.porte,
  });
}

enum Porte {
  Pequeno,
  Medio,
  Grande,
}
