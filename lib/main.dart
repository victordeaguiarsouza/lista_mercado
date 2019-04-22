import 'package:flutter/material.dart';
import 'package:lista_mercado/modules/Home/Pages/home.dart';
import 'package:lista_mercado/modules/About/Pages/about.dart';
import 'package:lista_mercado/modules/Settings/Pages/settings.dart';

void main() => runApp(ListaCompras());

class ListaCompras extends StatelessWidget {

  final routes = <String, WidgetBuilder> {
    HomePage.tag     : (context) => HomePage(),
    AboutPage.tag    : (context) => AboutPage(),
    SettingsPage.tag : (context) => SettingsPage(),
  };

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Test List',
      theme: ThemeData(
        primaryColorDark: Colors.blue,
        accentColor: Colors.grey,
        textTheme: TextTheme (
          headline: TextStyle(fontSize:  72, fontWeight: FontWeight.bold),
          title:    TextStyle(fontSize: 36, fontStyle: FontStyle.italic, color: Colors.blueGrey),
          body1:    TextStyle(fontSize: 14)
        ),
      ),
      home: HomePage(),
      routes: routes,
    );
  }
}