import 'package:flutter/material.dart';

Widget homeAppBar (){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text('Pokedex',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF303943),
              )),
        ),
        Stack(children: [
          Image.asset('assets/pokeball.png'),
          Positioned(left: 105, top: 45, child: Icon(Icons.list, size: 40.0)),
        ]),
      ],
    );
  }


