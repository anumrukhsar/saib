import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(children: [
        Expanded(
          flex: 3,
          child: Column(children: [
            Text(
              'Munthur Abu Mulhim',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: SizedBox(
                height: 1,
                child: Container(
                  color: Colors.grey,
                ),
              ),
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '1,234,567 ',
                  style:
                      TextStyle(color: Colors.yellow.shade600, fontSize: 30)),
              TextSpan(
                  text: '.89 ',
                  style: TextStyle(
                      color: Colors.yellow.shade600,
                      fontSize: 16,
                      fontFeatures: [FontFeature.subscripts()])),
              TextSpan(
                  text: 'SAR',
                  style: TextStyle(
                      color: Colors.yellow.shade600,
                      fontSize: 14,
                      fontFeatures: [FontFeature.subscripts()])),
            ])),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Waller Balance',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
              ),
            ),
          ]),
        ),

         Expanded(flex: 6, child: Column(
           children: [
             Row(
               mainAxisAlignment:MainAxisAlignment.spaceAround,
               children: [
                 Column(children:[
                 RawMaterialButton(
                   onPressed: (){},
                   elevation: 1.0,
                   fillColor: Colors.white,
                   child: Icon(Icons.remove_red_eye_outlined,
                   color: Color(0xFF2B414D),),
                   shape: CircleBorder(
                     side: BorderSide(width: 1, color: Color(0xFF2B414D), style: BorderStyle.solid),
                   ),
                 ),
                   Text(
                     'View Pin',
                     style: GoogleFonts.montserrat(
                       textStyle: TextStyle(
                           color: Color(0xFF2B414D),
                           fontWeight: FontWeight.w500,
                           fontSize: 11),
                     ),
                   ),
                 ],),
                 Column(children:[
                 RawMaterialButton(
                   onPressed: (){},
                   elevation: 1.0,
                   fillColor: Colors.white,
                   child: Icon(Icons.refresh,
                     color: Color(0xFF2B414D),),
                   shape: CircleBorder(
                     side: BorderSide(width: 1, color: Color(0xFF2B414D), style: BorderStyle.solid),
                   ),
                 ),
                   Text(
                     'Card Transactions',
                     style: GoogleFonts.montserrat(
                       textStyle: TextStyle(
                           color: Color(0xFF2B414D),
                           fontWeight: FontWeight.w500,
                           fontSize: 11),
                     ),
                   ),
                 ],),
                 Column(children:[
                 RawMaterialButton(
                   onPressed: (){},
                   elevation: 1.0,
                   fillColor: Colors.white,
                   child: Icon(Icons.close,
                     color: Color(0xFF2B414D),),
                   shape: CircleBorder(
                     side: BorderSide(width: 1, color: Color(0xFF2B414D), style: BorderStyle.solid),
                   ),
                 ),
                   Text(
                     'Stop Card',
                     style: GoogleFonts.montserrat(
                       textStyle: TextStyle(
                           color: Color(0xFF2B414D),
                           fontWeight: FontWeight.w500,
                           fontSize: 11),
                     ),
                   ),
                 ],),
               ],
             ),
            Container(padding:EdgeInsets.symmetric(vertical: 30.0),child: Image.network('https://assets.compareit4me.com/uploads/ksa/5c4ea0ffd7562738bbd3a4e2/en/saib%20visa%20signature.png'))

      ])),
    ])));
  }
}
