import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff48D0B0),
      appBar: AppBar(
        backgroundColor: Color(0xff48D0B0),
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
      body: BodyAbout(),
    );
  }
}



 class BodyAbout extends StatefulWidget {
   @override
   _BodyAboutState createState() => _BodyAboutState();
 }

 class _BodyAboutState extends State<BodyAbout> {
   @override
   Widget build(BuildContext context) {
     return Column(
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('Bulbasaur', style: TextStyle(fontSize: 36, color: Colors.white),),
             Text('#001', style: TextStyle(fontSize: 18, color: Colors.white),)
           ],
         ),
         Container(
           padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
           decoration: BoxDecoration(color: Color(0xff88ead1),
               borderRadius: BorderRadius.circular(50)),
           child: Text('Grass', style: TextStyle( color: Colors.white, fontSize: 12),),),
         Stack(
           children: [
             SizedBox(height: 100),
             Positioned(
               //top: 50, left: 90,
               child: Container(
                 child: Image.asset('assets/pokeball_a.png', color: Colors.green, ),
                 height: 150,
               ),
             ),
             Positioned(
               //top: 100, left:135 ,
                 child: Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png')),
           ],
         ),
         Container(
           height: 370,
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.only(topLeft: Radius.circular(45), topRight: Radius.circular(45))
           ),
           child: Column(
             children: [
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Text('About'),
                   Text('Base Stats'),
                   Text('Evolution'),
                   Text('Moves'),
                 ],


               ),
             ],
           ),
         ),
       ],
     );
   }
 }


