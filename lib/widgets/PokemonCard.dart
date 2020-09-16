import 'package:flutter/material.dart';
import 'package:pokemon_app/widgets/pokemon_class.dart';
import 'package:strings/strings.dart';


Widget pokemonCard(Pokemon pokemon){

  CardColorAndImage cardDetails = CardColorAndImage(pokemon.type);

  return Card(
    color: cardDetails.color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: InkWell(
      splashColor: Colors.blue.withAlpha(30),
      onTap: () { print('Card tapped.'); },
      child: Container(
        child: Stack(
          children: [
            Positioned(top: 20, left: 10,
                child: Text(pokemon.name, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold))),
            Positioned( top: 50, left: 10,
                child: typePokemonButton(pokemon),
            ),
            Positioned( left: 105,top: 7,
                child: Text( '#00${pokemon.id}', style: TextStyle(color: Colors.black12))),
            Positioned(
                top: 36,left: 75,
                child: cardDetails.image),
            Positioned(
                top: 18,left: 65,
                child: Image.network(pokemon.photo)),],
        ),
      ),
    ),
  );
}

Widget typePokemonButton( Pokemon pokemon){
  CardColorAndImage cardDetails = CardColorAndImage(pokemon.type);
  return Container(
    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
    decoration: BoxDecoration(color: cardDetails.colorBox,
      borderRadius: BorderRadius.circular(50)),
    child: Text(capitalize(pokemon.type),style: TextStyle( color: Colors.white, fontSize: 8),),);
}



 class CardColorAndImage {
  Image image;
  Color color;
  Color colorBox;
  CardColorAndImage( String type){
    if (type == 'grass'){
      this.color = Color(0xFF48d0b0);
      this.colorBox = Color(0xff88ead1);
      this.image = Image.asset('assets/pokeball_card.png', color: Color(0xff88ead1));
    } else if ( type == 'fire'){
      this.color = Color(0xFFFB6C6C);
      this.colorBox =  Color(0xfff7918f);
      this.image = Image.asset('assets/pokeball_card.png', color: Color(0xfff7aead));
    } else{
      this.color = Color(0xFF78bdfe);
      this.colorBox = Color(0xffb4daf7);
      this.image = Image.asset('assets/pokeball_card.png', color: Color(0xffb4daf7));
    }
  }
}


