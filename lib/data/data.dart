import 'package:dogfamily/models/cao.dart';
import 'package:dogfamily/models/usuario.dart';
import '../models/cao.dart';
import '../models/anuncio.dart';

List<Usuario> USUARIOS = [
  Usuario(
    id: 1,
    email: "gabrielmatos0@gmail.com",
    endereco: "Cohab",
    imagemPerfilURL: "photo.com",
    login: "Gabriel Matos",
    senha: "admin",
  ),
  Usuario(
    id: 1,
    email: "gabrielPimentel0@gmail.com",
    endereco: "Estrela",
    imagemPerfilURL: "www.photo1.com",
    login: "Gabriel Pimentel",
    senha: "12345678",
  ),
  Usuario(
    id: 1,
    email: "geraldopires0@gmail.com",
    endereco: "Milagre",
    imagemPerfilURL: "www.photo1.com",
    login: "Geraldo Pirez",
    senha: "987654321",
  ),
  Usuario(
    id: 1,
    email: "zeca@gmail.com",
    endereco: "Pirapora",
    imagemPerfilURL: "www.photo1.com",
    login: "Zeca",
    senha: "1313",
  ),
  Usuario(
    id: 1,
    email: "matos0@gmail.com",
    endereco: "Imperador",
    imagemPerfilURL: "www.photo1.com",
    login: "Gabriel Gairton",
    senha: "1313",
  ),
  Usuario(
    id: 1,
    email: "Samarasz0@gmail.com",
    endereco: "Novo Estrela",
    imagemPerfilURL:
        "https://exame.com/wp-content/uploads/2017/05/thinkstockphotos-532555574-e1494592049333.jpg",
    login: "Samara Souza",
    senha: "admin",
  ),
];

Cao caoModelo = Cao(
  sexo: "Macho",
  idade: 9,
  imageUrl:
      "https://i.pinimg.com/474x/32/2c/65/322c65d8bfc0e4e10ee48173aa44de3d.jpg",
  porte: Porte.Grande,
  raca: "Dáumata",
  temDeficienciaFisica: true,
  temDoenca: false,
  usaRemedioControlado: false,
);
Cao caoModelo2 = Cao(
  sexo: "Fêmea",
  idade: 9,
  imageUrl:
      "https://http2.mlstatic.com/D_NQ_NP_941965-MLB28385273506_102018-O.jpg",
  porte: Porte.Grande,
  raca: "Pinscher",
  temDeficienciaFisica: true,
  temDoenca: false,
  usaRemedioControlado: false,
);
Cao caoModelo3 = Cao(
  sexo: "Macho",
  idade: 9,
  imageUrl:
      "https://jornalbalcao.com.br/uploads/images/img_1920x_5e04dd43345ee2-56776958-47426824.jpg",
  porte: Porte.Grande,
  raca: "Rottweiler",
  temDeficienciaFisica: true,
  temDoenca: false,
  usaRemedioControlado: false,
);
Cao caoModelo4 = Cao(
  sexo: "Macho",
  idade: 9,
  imageUrl:
      "https://http2.mlstatic.com/D_NQ_NP_992300-MLB43788536578_102020-O.jpg",
  porte: Porte.Grande,
  raca: "Husky siberiano",
  temDeficienciaFisica: true,
  temDoenca: false,
  usaRemedioControlado: false,
);
Cao caoModelo5 = Cao(
  sexo: "fêmea",
  idade: 9,
  imageUrl:
      "https://f088b146830a59b5.cdn.gocache.net/uploads/noticias/2020/03/14/ldfsdx10j55p.jpg",
  porte: Porte.Grande,
  raca: "pit bull",
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
      descricao: "Ele é calmo e carinhoso, mas come muitoo"),
  Anuncio(
      cao: caoModelo2,
      id: 1,
      anunciante: USUARIOS[1],
      quandoCriado: DateTime.now(),
      descricao: "Ela é pequena mais brava"),
  Anuncio(
      cao: caoModelo3,
      id: 1,
      anunciante: USUARIOS[2],
      quandoCriado: DateTime.now(),
      descricao: "Pequenino mais come muito"),
  Anuncio(
      cao: caoModelo4,
      id: 1,
      anunciante: USUARIOS[3],
      quandoCriado: DateTime.now(),
      descricao: "Dois filhotinhos, todas machos"),
  Anuncio(
      cao: caoModelo5,
      id: 1,
      anunciante: USUARIOS[4],
      quandoCriado: DateTime.now(),
      descricao: "Bem grande, mas não morde, gosta mt de carinho"),
];
