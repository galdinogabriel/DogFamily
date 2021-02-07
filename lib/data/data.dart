import 'package:dogfamily/models/cao.dart';
import 'package:dogfamily/models/usuario.dart';
import '../models/cao.dart';
import '../models/anuncio.dart';

List<Usuario> USUARIOS = [
  Usuario(
    id: 1,
    email: "matos0@gmail.com",
    endereco: "Cohab",
    imagemPerfilURL: "www.photo1.com",
    login: "matos",
    senha: "1313",
  ),
];

Cao caoModelo = Cao(
  sexo: "Macho",
  idade: 9,
  imageUrl:
      "https://i.pinimg.com/474x/32/2c/65/322c65d8bfc0e4e10ee48173aa44de3d.jpg",
  porte: Porte.Grande,
  raca: "Dáumata filhote",
  temDeficienciaFisica: true,
  temDoenca: false,
  usaRemedioControlado: false,
);

List<Anuncio> ANUNCIOS_DETALHES = [
  Anuncio(
      cao: caoModelo,
      id: 1,
      anunciante: USUARIOS[0],
      quandoCriado: DateTime.now(),
      descricao: "carinhoso e ponposo"),
];
