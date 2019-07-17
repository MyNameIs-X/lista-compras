import 'package:flutter/cupertino.dart';
import 'package:lista_supermecado/layout.dart';

class AboutPage extends StatelessWidget{

  static String tag = 'about-page';

  @override
  Widget build(BuildContext context) {
    
    final content = Center(
      child: Text("Sobre")
    );

    return Layout.getContent(context, content);
  }

}