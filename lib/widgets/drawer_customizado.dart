import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class CustomDrawerWidget extends StatefulWidget {
  @override
  CustomDrawerWidgetState createState() {
    return new CustomDrawerWidgetState();
  }
}

class CustomDrawerWidgetState extends State<CustomDrawerWidget> {
  void onTap() {
    Navigator.of(context).pushNamed(AppRoutes.TELA_CHAT_HOME);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(0),
          child: Column(
            children: <Widget>[
              Container(
                color: Theme.of(context).accentColor,
                child: ListTile(
                  contentPadding:
                      EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 15),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Theme.of(context).accentColor,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    "Acesse sua conta agora!",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  subtitle: Text(
                    "Clique aqui",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              _buildTile(Icons.cloud_circle, "Anúncios de cães", true),
              _buildTile(Icons.edit, "Doar um cão", false),
              _buildTile(Icons.forum, "Chat", false, onTap),
              _buildTile(Icons.favorite, "Favoritos", false),
              _buildTile(Icons.person, "Minha Conta", false),
              Divider(),
              _buildBottomTile("Ajuda e Contato"),
              _buildBottomTile("Dúvidas Frequentes"),
              _buildBottomTile("Dicas de Segurança"),
              _buildBottomTile("Termos de Uso"),
              _buildBottomTile("Avalie na GooglePlay"),
              _buildBottomTile("Curta no Facebook"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile(IconData icon, String text, bool selected,
      [Function onTap]) {
    return ListTileTheme(
      selectedColor: Colors.orange,
      child: ListTile(
        selected: selected,
        onTap: () {
          onTap();
        },
        leading: Icon(
          icon,
          size: 25,
        ),
        title: Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildBottomTile(String text) {
    return ListTile(
      onTap: () {},
      title: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
