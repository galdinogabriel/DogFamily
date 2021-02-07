import 'package:flutter/material.dart';

import 'package:dogfamily/routes/app_routes.dart';
import 'package:dogfamily/screens/tela_cadastrar_cao.dart';
import 'package:dogfamily/screens/tela_anuncio.dart';
import 'package:dogfamily/screens/tela_cadastrar_usuario.dart';
import 'package:dogfamily/screens/tela_chat.dart';
import 'package:dogfamily/screens/tela_chat_home.dart';
import 'package:dogfamily/screens/tela_feed.dart';
import 'package:dogfamily/screens/Tela_login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog Family',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: {
        AppRoutes.TELA_LOGIN: (ctx) => LoginPage(),
        AppRoutes.CADASTRO_USUARIO: (ctx) => TelaCadastroUsuario(),
        AppRoutes.FEED: (ctx) => TelaFeed(),
        AppRoutes.TELA_CADASTRAR_CAO: (ctx) => TelaCadastrarCao(),
        AppRoutes.TELA_ANUNCIO: (ctx) => TelaAnuncio(),
        AppRoutes.TELA_CHAT: (ctx) => ChatScreen(),
        AppRoutes.TELA_CHAT_HOME: (ctx) => ChatHome(),
      },
    );
  }
}
