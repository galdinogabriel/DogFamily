import 'package:dogfamily/widgets/anuncios_caes.dart';
import 'package:dogfamily/widgets/barra_filtro_raca.dart';
import 'package:flutter/material.dart';
import 'package:dogfamily/widgets/drawer_customizado.dart';
import 'package:dogfamily/widgets/botao_anunciar_cao.dart';

class TelaFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawerWidget(),
      appBar: AppBar(
        title: Text("Dog Family"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: <Widget>[_buildFirstLayer(context), BotaoAnunciarCao()],
        ),
      ),
    );
  }

  Widget _buildFirstLayer(BuildContext context) {
    return Column(
      children: <Widget>[BarraFiltroRaca(), AnunciosCaes()],
    );
  }
}
