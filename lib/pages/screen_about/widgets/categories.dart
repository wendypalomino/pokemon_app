import 'package:flutter/material.dart';
import 'package:pokemon_app/models/pokemon_class.dart';
import 'package:pokemon_app/pages/screen_about/widgets/about_category.dart';
import 'package:pokemon_app/service/api.dart';

class Categories extends StatefulWidget {

  final Pokemon pokemon;

  const Categories({Key key, this.pokemon}) : super(key: key);


  @override
  _CategoriesState createState() => _CategoriesState(pokemon);
}

class _CategoriesState extends State<Categories> {

   Pokemon pokemon;

  List<String> categories = ["About", "Base Stats", "Evolution", "Moves"];
  int selectedIndex = 0;

  _CategoriesState(this.pokemon);


  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
            height: 25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildCategory(index),
            ),
          ),
        ),
        AboutCategory(pokemon: pokemon),
      ],
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontSize: 14,
                color: selectedIndex == index ? Colors.black : Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20 / 4), //top padding 5
              height: 2,
              width: 30,
              color: selectedIndex == index ? Color(0xff567DF4) : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
