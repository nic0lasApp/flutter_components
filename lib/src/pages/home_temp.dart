import 'package:flutter/material.dart';

class homePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes Temp'),
      ),
      body: ListView(
        children: const <Widget>[
          Text('lista1'),
          Text('lista2'),
          Text('lista...'),
          ListTile(
            title: Text('lista'),
          ),
          Divider(),
          ListTile(
            title: Text('lista'),
          ),
        ],
      ),
    );
  }
}
