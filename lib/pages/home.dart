import 'package:flutter/material.dart';
import 'package:lista_supermecado/layout.dart';

import 'package:lista_supermecado/pages/about.dart';

class HomePage extends StatelessWidget{

  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {

    final content = Column(
      children: <Widget>[
        Center(child: Text('Inicio'),)
      ],
    );

    return Layout.getContent(context, content);
  }
}