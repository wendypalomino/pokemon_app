


import 'package:flutter/material.dart';



class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
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
        ),
        Positioned(left: 260,
            child: Image.asset('assets/dotted.png')),

      ],
    );
  }
}

 AppBar buildAppBar(){
   return AppBar(
     backgroundColor: Color(0xff48D0B0),
     elevation: 0,
     leading: Padding(
       padding: const EdgeInsets.only(top: 20),
       child: IconButton(icon: Icon(Icons.arrow_back),
           onPressed: (){}),
     ),
     actions: [
       Padding( padding: EdgeInsets.only(right: 20, top: 20),
           child: ImageIcon(AssetImage('assets/love.png'),)),
     ],
   );
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
         Stack(children: [
              Container(
              height: MediaQuery.of(context).size.height - 76,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent),
              Positioned(
                  top: 75.0,
                  child: Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45.0),
                  topRight: Radius.circular(45.0),),
                  color: Colors.white),
                  height: MediaQuery.of(context).size.height - 100.0,
                  width: MediaQuery.of(context).size.width)),
              ]
         )],
     );
   }
 }


 /*Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   children: [
                     Text('Bulbasaur', style: TextStyle(
                       fontSize: 30, color: Colors.white,
                     ),),
                     Container(
                       padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                       decoration: BoxDecoration(
                           color: Colors.green,
                           borderRadius: BorderRadius.circular(50)),
                       child: Text('Grass',style: TextStyle( color: Colors.white, fontSize: 8),),),
                   ],
                 ),
                 Text('001'),
               ],
             ),*/



