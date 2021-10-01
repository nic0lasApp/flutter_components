import 'package:flutter/material.dart';
import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      home: homePageTemp(),
    );
  }
}
