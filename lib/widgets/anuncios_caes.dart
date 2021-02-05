import 'package:dogfamily/routes/app_routes.dart';
import 'package:dogfamily/widgets/item_card_widget.dart';
import 'package:flutter/material.dart';
import '../data/data.dart';
import '../models/anuncio.dart';

class AnunciosCaes extends StatefulWidget {
  @override
  _AnunciosCaesState createState() => _AnunciosCaesState();
}

class _AnunciosCaesState extends State<AnunciosCaes> {
  //Lista de usuarios apartir da arquivo data
  List<Anuncio> anuncios = ANUNCIOS_DETALHES;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: anuncios.length,
        itemBuilder: (ctx, i) {
          return InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(AppRoutes.TELA_ANUNCIO, arguments: anuncios[i]);
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: ItemCardWidget(
                urlImagem: anuncios[i].anunciante.cao.imageUrl,
                description: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      anuncios[i].anunciante.login,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      anuncios[i].anunciante.cao.raca,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                    Text(
                      "${anuncios[i].quandoCriado.toString()}, ${anuncios[i].anunciante.endereco}",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
