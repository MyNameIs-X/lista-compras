import 'package:flutter/material.dart';

import 'package:lista_supermecado/pages/home.dart';
import 'package:lista_supermecado/pages/about.dart';
import 'package:lista_supermecado/layout.dart';
import 'package:lista_supermecado/pages/settings.dart';

void main() => runApp(ListaCompras());

class ListaCompras extends StatelessWidget{

  final routes = <String, WidgetBuilder> {
    HomePage.tag: (context) => HomePage(),
    AboutPage.tag: (context) => AboutPage(),
    SettingsPage.tag: (context) => SettingsPage()
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Lista de Compras',
      theme: ThemeData(
        primaryColorDark: Layout.primary(),
        accentColor: Layout.secondary(),
        brightness: Brightness.light,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic, color: Colors.blueGrey),
          body1: TextStyle(fontSize: 14)
        )
      ),
      home: HomePage(),
      routes: routes
    );
  }
}