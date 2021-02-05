import 'package:dogfamily/models/anuncio.dart';
import 'package:dogfamily/widgets/detalhe_cao_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaAnuncio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String sim = "Sim";
    final String nao = "Não";
    final Anuncio anuncio =
        ModalRoute.of(context).settings.arguments as Anuncio;
    final porte = anuncio.anunciante.cao.getPorte();

    return Scaffold(
      appBar: AppBar(
        title: Text(anuncio.anunciante.cao.raca),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                anuncio.anunciante.cao.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 0, left: 15, right: 15),
              child: Row(
                children: [
                  Text(anuncio.anunciante.cao.raca,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 0, left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    anuncio.anunciante.login,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 0, left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    "Bairro ${anuncio.anunciante.endereco}",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 0, left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    "Publicado em ${anuncio.quandoCriado}",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    "Descrição",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 0, left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    anuncio.descricao,
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    "Detalhes",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            anuncio.anunciante.cao.temDoenca
                ? DetalheCaoWidget("Tem doença?", sim)
                : DetalheCaoWidget("Tem doença?", nao),
            anuncio.anunciante.cao.temDeficienciaFisica
                ? DetalheCaoWidget("Tem deficiencia física?", sim)
                : DetalheCaoWidget("Tem deficiencia física?", nao),
            anuncio.anunciante.cao.usaRemedioControlado
                ? DetalheCaoWidget("Usa remédio controlado?", sim)
                : DetalheCaoWidget("Usa remédio controlado?", nao),
            DetalheCaoWidget("Porte", porte),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 50),
              child: Divider(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {},
        child: Icon(Icons.chat_bubble_outline),
      ),
    );
  }
}
