import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pokemon_app/service/api.dart';
import 'package:pokemon_app/widgets/PokeballAppBar.dart';
import 'package:pokemon_app/widgets/PokemonCard.dart';
import 'package:pokemon_app/widgets/pokemon_class.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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

    var size = MediaQuery.of(context).size;
    final double itemHeight = size.height/5;
    final double itemWidth = size.width / 2;
    final double aspectRadio = (itemWidth/ itemHeight);

    return Scaffold(
      body: Column(
        children: [
          PokeballAppBar(),
          Expanded(
            child: GridView.count( crossAxisCount: 2, childAspectRatio: aspectRadio,
              padding: EdgeInsets.all(20),
              mainAxisSpacing: 10 ,
              crossAxisSpacing: 10,
              children: getListPokemons(listPokemons),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Color(0xff6C79DB),
        child: Image.asset('assets/filter.png')),
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



