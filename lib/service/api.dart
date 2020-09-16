import 'package:pokemon_app/widgets/pokemon_class.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Api {
  String url = 'https://api.sandbox.doapps.pe/pokedex/pokemons';
  Future<List<Pokemon>> getPokemons() async {
    Response response = await get(url);
    List listPokemonJson = jsonDecode(response.body);
    List<Pokemon> listPokemons = [];
    for ( var map in listPokemonJson) {
      Pokemon pokemons = Pokemon.fromList(map);
      listPokemons.add(pokemons);
    }
    return listPokemons;
  }

  Future<Pokemon> getPokemonById(int id) async {
    Response response = await get('$url/$id');
    Map pokemonJson = jsonDecode(response.body);
    Pokemon pokemon = Pokemon.byId(pokemonJson);
    return pokemon;
  }
}

