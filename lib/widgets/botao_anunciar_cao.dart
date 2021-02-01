import 'package:dogfamily/screens/tela_anunciar_cao.dart';
import 'package:flutter/material.dart';

class BotaoAnunciarCao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TelaAnunciarCao(),
          ),
        );
      },
      child: Container(
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
                  "Anuncie um cão",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
