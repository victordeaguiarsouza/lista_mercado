import 'package:flutter/material.dart';
import 'package:lista_mercado/modules/Commons/Pages/layout.dart';
import 'package:lista_mercado/modules/Home/widgets/itemList.dart';

class ActionsAdicionar {

  static List<Widget> getActions(BuildContext context, _nome) {
    
    List<void> itens = List<void>();

    itens.add(
      
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {

          final imputNome = TextFormField(
            controller: _nome,
            decoration: InputDecoration(
              hintText: "Nome",
              contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
          );

          return AlertDialog(
            title: Text('Adicionar a lista'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  imputNome
                ],
              ),
            ),
            actions: <Widget>[
              
              RaisedButton(
                color: Colors.redAccent,
                child: Text('Cancelar', style: TextStyle(color: Colors.white)),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
              
              RaisedButton(
                color: Colors.purple,
                child: Text('Adicionar', style: TextStyle(color: Colors.white)),
                onPressed: (){
                  print(_nome.text);
                  ItemList.setItem(
                    ListTile(
                      leading : Icon(Icons.pages),
                      title   : Text(_nome.text),
                      trailing: GestureDetector(
                        onTap: () {
                          print('item removido');
                          //ItemList.removeItem(item);
                        },
                        child: IconTheme(
                          data: IconThemeData(color: Colors.red),
                          child: Icon(Icons.delete),
                        ),
                      ),
                    )
                  );
                  Navigator.of(context).pushNamedAndRemoveUntil('home-page',ModalRoute.withName('/'));
                },
              ),

            ],
          );

        },
      )

    );
    
  }

  
}