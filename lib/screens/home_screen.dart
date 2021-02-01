import 'package:flutter/material.dart';
import 'package:dogfamily/widgets/custom_drawer_widget.dart';
import 'package:dogfamily/widgets/item_card_widget.dart';

class HomeScreen extends StatelessWidget {
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
          children: <Widget>[_buildFirstLayer(context), _buildButtom()],
        ),
      ),
    );
  }

  Widget _buildFirstLayer(BuildContext context) {
    return Column(
      children: <Widget>[_buildTopbar(context), _buildItems()],
    );
  }

  Widget _buildTopbar(BuildContext context) {
    return Material(
      elevation: 6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              height: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: BorderDirectional(
                  start: BorderSide(color: Colors.grey),
                  end: BorderSide(color: Colors.grey),
                ),
              ),
              child: Text(
                "Raça",
                style: TextStyle(
                    color: Theme.of(context).accentColor, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Text(
              "Filtros",
              style:
                  TextStyle(color: Theme.of(context).accentColor, fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItems() {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5),
            child: ItemCardWidget(
              urlImagem:
                  "https://i.pinimg.com/474x/32/2c/65/322c65d8bfc0e4e10ee48173aa44de3d.jpg",
              description: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Bruna matos",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Dáumata filhote",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                  Text(
                    "25 Dezembro, Estrela",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: ItemCardWidget(
              urlImagem:
                  "https://2.bp.blogspot.com/-WYAQ6WLxLFI/TxzX3fiaULI/AAAAAAAAAVE/Zv7k3yZXTD0/s1600/cao-do-demo.jpg",
              description: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Gabriel Matos",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Pinscher Raivoso",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                  Text(
                    "21 Setembro, Milagre",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: ItemCardWidget(
              urlImagem:
                  "https://data.whicdn.com/images/263819002/original.jpg",
              description: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Geraldo Pirez",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Vira-lata antipático",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                  Text(
                    "10 Junho, Cohab",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: ItemCardWidget(
              urlImagem:
                  "https://www.folhavitoria.com.br/geral/blogs/petblog/wp-content/uploads/2017/03/dog-eyebrow-2.jpg",
              description: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Pimentel",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "roti valew",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                  Text(
                    "13 Abril, Pirapora",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtom() {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      alignment: Alignment.bottomCenter,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(50),
        color: Colors.transparent,
        child: Container(
          height: 50,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.redAccent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 35,
              ),
              Text(
                "Doar um cão",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
