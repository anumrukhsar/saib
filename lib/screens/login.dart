import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saib/custom_widgets/background-widget.dart';
import 'package:saib/custom_widgets/login/login-widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:
      AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'LOGIN',
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 20,
              )),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                    width: 30.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(12.5)),
                      color: Colors.grey,
                    ),
                    child: Center(
                        child: Text(
                          "En",
                          style: GoogleFonts.montserrat(),
                        ))),
                Container(
                    width: 30.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(12.5)),
                      color: Colors.yellow.shade600,
                    ),
                    child: Center(
                        child: Text(
                          "ع",
                          style: GoogleFonts.montserrat(),
                        ))),
              ],
            ),
          ),
        ],
      ),
      body:
      Stack(
        children: [
          BackgroundWidget(),
          LoginWidget(),
        ],
      )
    );
  }


}


