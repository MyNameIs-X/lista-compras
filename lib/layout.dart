import "package:flutter/material.dart";
import 'package:lista_supermecado/pages/home.dart';
import 'package:lista_supermecado/pages/about.dart';
import 'package:lista_supermecado/pages/settings.dart';


class Layout{

  static final pages = [
    HomePage.tag,
    AboutPage.tag,
    SettingsPage.tag
  ];

  static int currItem = 0;

  static Scaffold getContent(BuildContext context, content){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Layout.primary(),
        title: Center(
          child: Text('Lista de compras'),
        ),
        actions: _getActions(context),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currItem,
        fixedColor: primary(),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem( icon: Icon(Icons.home), title: Text('Home') ),
          BottomNavigationBarItem( icon: Icon(Icons.question_answer), title: Text('Sobre') ),
          BottomNavigationBarItem( icon: Icon(Icons.settings), title: Text('Configurações') ),

        ],
        onTap: (int i){
          currItem = i;
          Navigator.of(context).pushNamed(pages[currItem]);
        },
      ),
      body: content,
    );
  }

  static List<Widget> _getActions(context){
    List<Widget> itens = List<Widget>();

    if(pages[currItem] == HomePage.tag){
      TextEditingController _c = TextEditingController();

      itens.add(
        GestureDetector(
          onTap: (){
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext ctx){
                final input = TextFormField(
                  controller: _c,
                  decoration: InputDecoration(
                    hintText: 'Nome',
                    contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),

                    )
                  )
                );

                return AlertDialog(
                  title: Text('Nova lista'),
                  content: SingleChildScrollView(
                    child: ListBody(children: <Widget>[
                        input
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    RaisedButton(
                      color: Layout.secondary(),
                      child: Text('Cancelar', style: TextStyle(color: Layout.light())),
                      onPressed: (){
                        Navigator.of(ctx).pop();
                      },  
                    ),
                    RaisedButton(
                      color: Layout.primary(),
                      child: Text('Criar', style: TextStyle(color: Layout.light())),
                      onPressed: (){
                        Navigator.of(ctx).pop();
                        print(_c.text);
                      },
                    ),
                  ]
                );
              }
            );
          },
          child: Icon(Icons.add),
        )
      );
      itens.add(Padding(padding: EdgeInsets.only(right: 20)));
    }
    
    return itens;
  }

  static Color primary([double opacity = 1]) => Color.fromRGBO(62, 63, 89, opacity);
  static Color secondary([double opacity = 1]) => Color.fromRGBO(150, 150, 150, opacity);
  static Color light([double opacity = 1]) => Color.fromRGBO(242, 234, 228, opacity);
  static Color dark([double opacity = 1]) => Color.fromRGBO(51, 51, 51, opacity);

  static Color danger([double opacity = 1]) => Color.fromRGBO(217, 74, 74, opacity);
  static Color success([double opacity = 1]) => Color.fromRGBO(6, 166, 59, opacity);
  static Color info([double opacity = 1]) => Color.fromRGBO(0, 122, 166, opacity);
  static Color warning([double opacity = 1]) => Color.fromRGBO(166, 134, 0, opacity);
}