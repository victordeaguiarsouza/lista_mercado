import 'package:flutter/material.dart';
import 'package:lista_mercado/modules/Home/Pages/home.dart';
import 'package:lista_mercado/modules/About/Pages/about.dart';
import 'package:lista_mercado/modules/Settings/Pages/settings.dart';
import 'package:lista_mercado/modules/Home/Actions/adicionar.dart';

class Layout {

  static int ci = 0;

  static final pages = [
    HomePage.tag,
    AboutPage.tag,
    SettingsPage.tag,
  ];

  static Scaffold getContent(BuildContext context, content){
    
    TextEditingController _nome = TextEditingController();

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
          child: Text("App Lista"),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: (){
          ActionsAdicionar.getActions(context, _nome);
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ci,
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.purple,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home)       , title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.assignment) , title: Text('About')),
          BottomNavigationBarItem(icon: Icon(Icons.settings)   , title: Text('Settings')),
        ],
        onTap: (int i){
          ci = i;
          Navigator.of(context).pushNamedAndRemoveUntil(pages[ci], ModalRoute.withName('/'));
        },

      ),
  
      body: content,
      
    );

  }

}