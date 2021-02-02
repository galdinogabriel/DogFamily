import 'package:dogfamily/models/usuario.dart';
import '../models/cao.dart';
import '../models/anuncio.dart';

List<Usuario> USUARIOS = [
  Usuario(
    email: "matos0@gmail.com",
    endereco: "Rua Raimundo Padua Costa Mota",
    imagemPerfilURL: "www.photo1.com",
    login: "matos",
    senha: "1313",
    cao: caes[0],
  ),
  Usuario(
    email: "geraldo0@gmail.com",
    endereco: "Duque de Caxias",
    imagemPerfilURL: "www.photo2.com",
    login: "geraldo",
    senha: "1414",
    cao: caes[1],
  ),
  Usuario(
      email: "pimentel0@gmail.com",
      endereco: "Altamira",
      imagemPerfilURL: "www.photo3.com",
      login: "matos",
      senha: "1515",
      cao: caes[2]),
];

List<Cao> caes = [
  Cao(
    idade: 9,
    imageUrl:
        "https://i.pinimg.com/474x/32/2c/65/322c65d8bfc0e4e10ee48173aa44de3d.jpg",
    porte: Porte.Grande,
    raca: "Dáumata filhote",
    temDeficienciaFisica: true,
    temDoenca: false,
    usaRemedioControlado: false,
  ),
  Cao(
    idade: 9,
    imageUrl:
        "https://2.bp.blogspot.com/-WYAQ6WLxLFI/TxzX3fiaULI/AAAAAAAAAVE/Zv7k3yZXTD0/s1600/cao-do-demo.jpg",
    porte: Porte.Pequeno,
    raca: "Pinscher Raivoso",
    temDeficienciaFisica: false,
    temDoenca: false,
    usaRemedioControlado: false,
  ),
  Cao(
    idade: 9,
    imageUrl: "https://data.whicdn.com/images/263819002/original.jpg",
    porte: Porte.Medio,
    raca: "Vira-lata antipático",
    temDeficienciaFisica: false,
    temDoenca: true,
    usaRemedioControlado: false,
  )
];

List<Anuncio> ANUNCIOS_DETALHES = [
  Anuncio(
      anunciante: USUARIOS[0],
      quandoCriado: DateTime.now(),
      descricao: "carinhoso e ponposo"),
  Anuncio(
      anunciante: USUARIOS[1],
      quandoCriado: DateTime.now(),
      descricao: "cheiroso e chavoso"),
];
