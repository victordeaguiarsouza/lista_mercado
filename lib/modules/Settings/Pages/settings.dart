import 'package:flutter/material.dart';
import 'package:lista_mercado/modules/Commons/Pages/layout.dart';

class SettingsPage extends StatelessWidget {
  
  static String tag = 'settings-page';

  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: Text('Settings of system!')
    );
    
    return Layout.getContent(context, content);
  }

}