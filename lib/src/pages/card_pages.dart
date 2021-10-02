import 'dart:ffi';

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [_cardTipo1(), SizedBox(height: 30.0), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage('https://picsum.photos/250?image=9'),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Na'),
          )
        ],
      ),
    );
  }
}

Widget _cardTipo1() {
  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Título de la tarjeta'),
          subtitle: Text('Subtítulo descripción de la tarjeta'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(onPressed: () {}, child: Text('Cancelar')),
            TextButton(onPressed: () {}, child: Text('Ok')),
          ],
        )
      ],
    ),
  );
}
