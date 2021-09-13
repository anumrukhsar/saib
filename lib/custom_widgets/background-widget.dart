import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
     child: Stack(
       children: [
         Image.asset(
           'assets/images/bg_landing.png',
           fit: BoxFit.fill,
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
         ),
         Image.asset(
           'assets/images/map_dots.png',
           fit: BoxFit.contain,
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
         ),

         Column(
           children: [
             Expanded(flex:3,child: Container()),

             Expanded(
               flex: 1,
               child: Image.asset(
                 'assets/images/line.png',
                 fit: BoxFit.fill,
                 width: MediaQuery.of(context).size.width,
               ),
             ),
             Expanded(
               flex: 6,
               child: Container(
                 color: Colors.white,
                 width: MediaQuery.of(context).size.width,
                 padding: EdgeInsets.all(30.0),

               ),
             )
           ],
         ),
       ],
     ),
   );
  }
}