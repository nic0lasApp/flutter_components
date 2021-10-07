// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          CircleAvatar(
            backgroundImage:
                NetworkImage('https://picsum.photos/id/237/200/300'),
            radius: 25.0,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.brown,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://picsum.photos/id/237/200/300'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
