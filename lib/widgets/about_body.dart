import 'package:flutter/material.dart';
import 'package:pokemon_app/widgets/pokemon_class.dart';
import 'package:pokemon_app/widgets/PokemonCard.dart';

class BodyAbout extends StatelessWidget {

  final Pokemon pokemon;
  BodyAbout({this.pokemon});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24),
                      )
                    ),

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Baulbasur', style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                      ),),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                        decoration: BoxDecoration( color: Color(0xff88ead1),
                        borderRadius: BorderRadius.circular(50)),
                        child: Text('Grass',style: TextStyle( color: Colors.white, fontSize: 10),),),
                    ],
                  ),
                ),
                Positioned(
                  height: 150,
                  left: size.width/3.5,
                  top: 70,
                  child: Image.asset('assets/pokeball_a.png', color: Color(0xff88ead1),),
                ),
                Positioned(
                    left: size.width/2.8,
                    top: 135 ,
                    child: Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png')),
              ],
            ),
          )
        ],
      ),
    );
  }
}


