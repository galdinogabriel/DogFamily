import 'package:dogfamily/routes/app_routes.dart';
import 'package:flutter/material.dart';

class BotaoAnunciarCao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      alignment: Alignment.bottomCenter,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(50),
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(AppRoutes.TELA_ANUNCIO);
          },
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
