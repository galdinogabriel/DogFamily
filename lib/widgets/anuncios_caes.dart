import 'package:dogfamily/widgets/item_card_widget.dart';
import 'package:flutter/material.dart';

class AnunciosCaes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}
