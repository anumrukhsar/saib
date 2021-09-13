import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularButton extends StatelessWidget {
  final icon;
  final onPressed;
  final label;
  final double deg;
  const CircularButton({this.icon, this.label,this.onPressed,required this.deg});

  double getRadiansFromDeg(double deg){
    double unitRadian = 57.2958;
    return deg/unitRadian;
  }

  @override
  Widget build(BuildContext context) {
    return
      Transform.translate(offset: Offset.fromDirection(getRadiansFromDeg(deg),150),
    child:
    RawMaterialButton(
      onPressed: onPressed,
      elevation: 2.0,
      fillColor: Colors.yellow.shade600,
      child: Column(children:[icon, Text(label, style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            fontSize: 8,
          )),)]),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    )
      );

  }
}