import 'package:flutter/material.dart';
import 'package:pokemon_app/models/pokemon_class.dart';
import 'package:pokemon_app/pages/screen_about/widgets/about_category.dart';
import 'package:pokemon_app/pages/screen_about/widgets/base_stats.dart';

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
    return DefaultTabController(
      length: categories.length,
      child: DefaultTabController(
          length: categories.length,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Container(
                height: 45,
                child: TabBar(
                  labelColor: Colors.grey,
                  indicatorColor: Color(0xff567DF4),
                  tabs: [
                    Text('About', style: TextStyle(fontSize: 12)),
                    Text('Base Stats',style: TextStyle(fontSize: 12)),
                    Text('Evolutions',style: TextStyle(fontSize: 12)),
                    Text('Moves',style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            ),
            body: TabBarView(
              children: [
                AboutCategory(pokemon: pokemon),
                BaseStats(pokemon.stats),
                Container(color: Colors.blue),
                Container(color: Colors.redAccent),

              ],
            ),
          ),


      ),
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
            ),
            Expanded(child: AboutCategory(pokemon: pokemon)),
          ],
        ),
      ),
    );
  }
}
