import 'package:flutter/material.dart';
import 'package:lista_mercado/modules/Commons/Pages/layout.dart';

class HomePage extends StatelessWidget {
  
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: Text('HOME. Hello World!')
    );
    
    return Layout.getContent(context, content);
  }

}