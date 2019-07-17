import 'package:flutter/cupertino.dart';
import 'package:lista_supermecado/layout.dart';

class SettingsPage extends StatelessWidget{

  static String tag = 'settings-page';

  @override
  Widget build(BuildContext context) {
    
    final content = Center(
      child: Text("Configurações")
    );

    return Layout.getContent(context, content);
  }

}