
import 'package:flutter/material.dart';
import 'package:pokemon_app/pages/screen_home/home.dart';
import 'package:pokemon_app/pages/screen_about/about.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(fontFamily: 'Circular'),
    initialRoute: '/home',
    routes: {
      '/home':  (context) => Home(),
      '/about': (context) => About(),
     },
  ));
  }

