import 'package:flutter/material.dart';

class Pokemon {
  int id;
  String name, type, photo, about;
  int height, weight;
  List stats;

  Pokemon.fromList(map){
    this.id = map['id'];
    this.name = map['name'];
    this.type = map['type'];
    this.photo = map['photo'];
  }

  Pokemon.byId(map){
    this.id = map['id'];
    this.name = map['name'];
    this.type = map['type'];
    this.photo = map['photo'];
    this.about = map['about'];
    this.height = map['height'];
    this.weight = map['weight'];
    this.stats = map['stats'];
  }

  getPokemonColor(String type){
    if ( type == 'grass'){
      Color(0xFF48d0b0);
    } else if ( type == 'fire'){
      Color(0xFFFB6C6C);
    } else{
     Color(0xFF78bdfe);
    }

  }
}


