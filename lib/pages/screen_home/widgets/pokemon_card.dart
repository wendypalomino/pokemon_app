import 'package:flutter/material.dart';
import 'package:pokemon_app/models/pokemon_class.dart';
import 'package:strings/strings.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  final Function press;

  const PokemonCard({ Key key, this.pokemon, this.press,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardColorAndImage cardDetails = CardColorAndImage(pokemon.type);
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: cardDetails.color,
        ),
        child: Stack(
          children: [
            Positioned(top: 20, left: 10,
                child: Text(pokemon.name, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold))),
            Positioned( top: 50, left: 10,
              child: typePokemonButton(pokemon),),
            Positioned( left: 105,top: 7,
                child: Text( '#00${pokemon.id}', style: TextStyle(color: Colors.black12))),
            Positioned(top: 30,left: 82,
                child: cardDetails.image),
            Positioned( top: 14,left: 65,
                child: Image.network(pokemon.photo)),],
        ),
      )
    );
  }
}



Widget typePokemonButton(Pokemon pokemon){
  CardColorAndImage cardDetails = CardColorAndImage(pokemon.type);
  return Container(
    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
    decoration: BoxDecoration(color: cardDetails.colorBox,
      borderRadius: BorderRadius.circular(50)),
    child: Text(capitalize(pokemon.type),style: TextStyle( color: Colors.white, fontSize: 10),),);
}

class CardColorAndImage {
  Image image;
  Color color, colorBox;

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

