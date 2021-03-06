// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:componentes/src/pages/alert_page.dart';
import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    /*print(menuProvider.opciones);
    menuProvider.cargarData().then((opciones) {
      print('_lista');
      print(opciones);
    });*/

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );

    /**/
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    if (data == null) {
      return [];
    }
    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          /*final route = MaterialPageRoute(builder: (context) => AlertPage());
          Navigator.push(context, route);*/
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      opciones
        ..add(widgetTemp)
        ..add(Divider());
    });
    return opciones;
  }
}
