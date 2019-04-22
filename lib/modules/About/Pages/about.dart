import 'package:flutter/material.dart';
import 'package:lista_mercado/modules/Commons/Pages/layout.dart';

class AboutPage extends StatelessWidget {
  
  static String tag = 'about-page';

  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: Text('Informações sobre a aplicação!')
    );
    
    return Layout.getContent(context, content);
  }

}