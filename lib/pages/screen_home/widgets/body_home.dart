import 'package:flutter/material.dart';
import 'package:pokemon_app/models/pokemon_class.dart';
import 'package:pokemon_app/pages/screen_about/about.dart';
import 'package:pokemon_app/pages/screen_home/widgets/pokemon_card.dart';
import 'package:pokemon_app/service/api.dart';

class BodyHome extends StatefulWidget {
  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {

  List<Pokemon>  listPokemons = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Api().getPokemons().then((value) {
      setState(() {
        listPokemons = value;
      });
    });
  }

  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20) ,
          itemCount: listPokemons.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.6,
          ),
          itemBuilder: (context, index) => PokemonCard(
              pokemon: listPokemons[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute( builder: (context) => About(
                    pokemon: listPokemons[index] ,
                  ),
                  ))
          ),
        )
    );
  }
}


List<Widget> getListPokemons(List<Pokemon> listPokemons){
  List<Widget> listPokemonsWidget = [];
  for(var pokemon in listPokemons){
    Widget pokemonWidget = PokemonCard(pokemon: pokemon);
    listPokemonsWidget.add(pokemonWidget);
  }
  return listPokemonsWidget;
}