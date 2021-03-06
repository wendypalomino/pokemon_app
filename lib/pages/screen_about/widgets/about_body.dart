import 'package:flutter/material.dart';
import 'package:pokemon_app/models/pokemon_class.dart';
import 'package:pokemon_app/pages/screen_about/widgets/categories.dart';
import 'package:pokemon_app/pages/screen_home/widgets/pokemon_card.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({
    Key key,
    @required this.pokemon,
    @required this.colorAndImage,
  }) : super(key: key);

  final Pokemon pokemon;
  final CardColorAndImage colorAndImage;

  @override

  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: size.height * 0.886,
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
                child: Categories(pokemon: pokemon),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(pokemon.name, style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),),
                    typePokemonButton(pokemon),
                  ],
                ),
              ),
              Positioned(
                height: 150,
                left: size.width/3.5,
                top: 70,
                child: Image.asset('assets/pokeball_a.png', color: colorAndImage.colorBox,),
              ),
              Positioned(
                  left: size.width/2.8,
                  top: 115 ,
                  child: Image.network(pokemon.photo)
              ),
              Positioned(
                top: 15,
                left: 300,
                child: Text('#00${pokemon.id}', style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),),
              ),
            ],
          ),
        )
      ],
    );
  }
}

