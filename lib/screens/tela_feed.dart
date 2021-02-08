import 'package:dogfamily/data/data.dart';
import 'package:dogfamily/models/anuncio.dart';
import 'package:dogfamily/widgets/anuncios_caes.dart';
import 'package:dogfamily/widgets/barra_filtro_raca.dart';
import 'package:flutter/material.dart';
import 'package:dogfamily/widgets/drawer_customizado.dart';
import 'package:dogfamily/widgets/botao_anunciar_cao.dart';

class TelaFeed extends StatefulWidget {
  //Dados mockados
  @override
  _TelaFeedState createState() => _TelaFeedState();
}

class _TelaFeedState extends State<TelaFeed> {
  List<Anuncio> anuncios = ANUNCIOS_DETALHES;

  void addAnuncio(Anuncio anuncio) {
    setState(() {
      anuncios.add(anuncio);
    });
  }

  @override
  Widget build(BuildContext context) {
    print("${anuncios.length} inicial");
    return Scaffold(
      drawer: CustomDrawerWidget(addAnuncio),
      appBar: AppBar(
        title: Text("Dog Family"),
        centerTitle: true,
        actions: <Widget>[],
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            _buildFirstLayer(context),
            BotaoAnunciarCao(addAnuncio)
          ],
        ),
      ),
    );
  }

  Widget _buildFirstLayer(BuildContext context) {
    return Column(
      children: <Widget>[BarraFiltroRaca(), AnunciosCaes(anuncios)],
    );
  }
}
