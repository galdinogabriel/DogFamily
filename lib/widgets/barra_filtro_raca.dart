import 'package:flutter/material.dart';

class BarraFiltroRaca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}
