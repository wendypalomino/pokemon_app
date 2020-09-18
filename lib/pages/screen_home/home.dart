import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pokemon_app/pages/screen_home/widgets/appbar_home.dart';
import 'package:pokemon_app/pages/screen_home/widgets/body_home.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          homeAppBar(),
         BodyHome(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Color(0xff6C79DB),
        child: Image.asset('assets/filter.png')),
    );
  }
}




