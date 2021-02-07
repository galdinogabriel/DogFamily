import 'package:flutter/foundation.dart';

class Cao {
  String raca;
  int idade;
  String sexo;
  String imageUrl;
  bool temDeficienciaFisica;
  bool temDoenca;
  bool usaRemedioControlado;
  Porte porte;

  //construtor nomeado
  Cao({
    @required this.raca,
    @required this.idade,
    @required this.sexo,
    @required this.imageUrl,
    @required this.temDeficienciaFisica,
    @required this.temDoenca,
    @required this.usaRemedioControlado,
    @required this.porte,
  });

  // ignore: missing_return
  String getPorte() {
    if (porte == Porte.Grande) {
      return "Grande";
    } else if (porte == Porte.Medio) {
      return "Médio";
    } else if (porte == Porte.Pequeno) {
      return "pequeno";
    }
  }
}

enum Porte {
  Pequeno,
  Medio,
  Grande,
}
