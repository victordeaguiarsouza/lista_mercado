import 'package:flutter/material.dart';

class ItemList {
  
  static List<ListTile> itens = List<ListTile>();

  static setItem(ListTile item){
    itens.add(item);
  }

  static List<ListTile> getItens(){
    return itens;
  }

  static removeItem(ListTile item){
    itens.add(item);
  }
}