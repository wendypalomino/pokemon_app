import 'package:flutter/material.dart';
import 'package:pokemon_app/models/pokemon_class.dart';
import 'package:pokemon_app/pages/screen_about/widgets/about_body.dart';
import 'package:pokemon_app/pages/screen_home/widgets/pokemon_card.dart';
import 'package:pokemon_app/service/api.dart';

class About extends StatefulWidget {
  final Pokemon pokemon;
  const About({Key key, this.pokemon}) : super(key: key);

  @override
  _AboutState createState() => _AboutState(pokemon);
}

class _AboutState extends State<About> {
  Pokemon pokemon;
  _AboutState(this.pokemon);

  @override

  Widget build(BuildContext context) {

    CardColorAndImage colorAndImage = CardColorAndImage(pokemon.type);
    return Scaffold(
      backgroundColor: colorAndImage.color,
      appBar: AppBar(
        backgroundColor: colorAndImage.color,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: IconButton(icon: Icon(Icons.arrow_back),
              onPressed: (){
            Navigator.pop(context, '/home');
              }),
        ),
        actions: [
          Padding( padding: EdgeInsets.only(right: 20, top: 20),
              child: ImageIcon(AssetImage('assets/love.png'),)),
        ],
      ),
      body: FutureBuilder(
        future: Api().getPokemonById(pokemon.id),
        builder: (context, snapshot) {
          pokemon = snapshot.data;
          if(snapshot.connectionState == ConnectionState.done){
            return AboutBody(pokemon: pokemon, colorAndImage: colorAndImage);
          } else {
            return Container( color: colorAndImage.color,);
          }

        },
      ),
      //AboutBody(pokemon: pokemon, colorAndImage: colorAndImage),
    );
  }
}






