import 'package:dogfamily/routes/app_routes.dart';
import 'package:dogfamily/screens/tela_cadastrar_cao.dart';
import 'package:dogfamily/screens/tela_anuncio.dart';
import 'package:dogfamily/screens/tela_feed.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog Family',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: {
        AppRoutes.HOME: (ctx) => TelaFeed(),
        AppRoutes.TELA_CADASTRAR_CAO: (ctx) => TelaCadastrarCao(),
        AppRoutes.TELA_ANUNCIO: (ctx) => TelaAnuncio()
      },
    );
  }
}
