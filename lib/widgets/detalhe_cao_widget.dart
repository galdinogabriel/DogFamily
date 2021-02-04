import 'package:flutter/material.dart';

class DetalheCaoWidget extends StatelessWidget {
  final String texto;
  final String valor;

  const DetalheCaoWidget(this.texto, this.valor);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 0, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            texto,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Text(
            valor,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
