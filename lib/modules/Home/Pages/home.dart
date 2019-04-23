import 'package:flutter/material.dart';
import 'package:lista_mercado/modules/Commons/Pages/layout.dart';
import 'package:lista_mercado/modules/Home/widgets/itemList.dart';

class HomePage extends StatelessWidget {
  
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    
    final content = ListView(
      shrinkWrap: true,
      children: ListTile.divideTiles(
        context: context,
        tiles: ItemList.getItens()
      ).toList()
    );
    
    return Layout.getContent(context, content);
  }

}