
import 'package:flutter/material.dart';
import 'package:pokemon_app/pages/about.dart';
import 'package:pokemon_app/pages/home.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(fontFamily: 'Circular'),
    initialRoute: '/about',
    routes: {
      '/home':  (context) => Home(),
      '/about': (context) => About(),
    },
  ));

}
