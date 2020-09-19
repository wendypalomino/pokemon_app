
import 'package:flutter/material.dart';
import 'package:pokemon_app/models/pokemon_class.dart';

class AboutCategory extends StatelessWidget {
  final Pokemon pokemon;

  const AboutCategory({Key key, this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            child: Text( "Bulbasaur is a small, quadruped Pokémon that has blue-green skin with darker patches. It has red eyes with white pupils, pointed, ear-like structures on top of ile l",),
          ),
          SizedBox(height: 30),
          Container(
            height: 70,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                color: Colors.grey[200],
                blurRadius: 10,
                offset: Offset(0.0, 0.75)
              )],
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Height', style: TextStyle( color: Colors.grey),),
                  Text('232'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Weight',style: TextStyle( color: Colors.grey),),
                  Text('${pokemon.weight}'),
                ],
              )
            ],
            ),
          ),
        ],
      ),
    );
  }
}

