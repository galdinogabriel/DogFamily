import 'package:dogfamily/models/anuncio.dart';
import 'package:dogfamily/models/cao.dart';
import 'package:dogfamily/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:dogfamily/screens/tela_chat.dart';

class ChatHome extends StatefulWidget {
  @override
  ChatScreenState createState() {
    return ChatScreenState();
  }
}

class ChatScreenState extends State<ChatHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => Column(
          children: <Widget>[
            Divider(
              height: 10.0,
            ),
            ListTile(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChatScreen(Anuncio(
                          anunciante: Usuario(
                            id: 1,
                            email: "gabrielPimentel0@gmail.com",
                            endereco: "Estrela",
                            imagemPerfilURL: "www.photo1.com",
                            login: dummyData[i].name,
                            senha: "12345678",
                          ),
                          cao: caoModelo,
                          descricao: "aa",
                          id: 1,
                          quandoCriado: DateTime.now())))),
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dummyData[i].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummyData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    dummyData[i].time,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  dummyData[i].message,
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: "Gabriel Almeida",
      message: "Oi",
      time: "10:34",
      avatarUrl:
          "https://st4.depositphotos.com/13193658/39348/i/600/depositphotos_393489484-stock-photo-handsome-man-smiling-camera-living.jpg"),
  ChatModel(
      name: "Rafaela Sales",
      message: "Oi",
      time: "6:20",
      avatarUrl:
          "https://st.depositphotos.com/1144472/2324/i/600/depositphotos_23240122-stock-photo-happy-smiling-young-woman-over.jpg"),
  ChatModel(
      name: "Júnior Santos",
      message: "Olá",
      time: "7:40",
      avatarUrl:
          "https://st.depositphotos.com/1594308/2420/i/600/depositphotos_24207443-stock-photo-braces-smile.jpg"),
  ChatModel(
      name: "Juliana Silva",
      message: "Olá",
      time: "1:10",
      avatarUrl:
          "https://static1.sorrisologia.com.br/articles/3/22/63/@/10365-sorrir-faz-bem-pra-vida-e-autoestima-de-slider_medias_mobile-1.jpg"),
  ChatModel(
      name: "Romeu Abreu",
      message: "Oi, Boa tarde",
      time: "4:00",
      avatarUrl:
          "https://image.freepik.com/fotos-gratis/conceito-de-pessoas-e-estilo-de-vida-homem-caucasiano-jovem-atraente-de-bom-humor-camisa-azul-de-mangas-compridas-sorrindo-alegremente-mostrando-os-dentes-brancos-perfeitos-felizes-com-noticias-positivas-mantendo-os-bracos-cruzados_176420-13280.jpg"),
  ChatModel(
      name: "Gustavo Alves",
      message: "Oii",
      time: "3:15",
      avatarUrl:
          "https://cdn.pixabay.com/photo/2019/06/27/13/10/selfie-4302321_960_720.jpg"),
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
Usuario usuario = Usuario(
  id: 1,
  email: "gabrielPimentel0@gmail.com",
  endereco: "Estrela",
  imagemPerfilURL: "www.photo1.com",
  login: dummyData[0].name,
  senha: "12345678",
);
