import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saib/custom_widgets/background-widget.dart';
import 'package:saib/custom_widgets/home/bottom-app-bar.dart';
import 'package:saib/custom_widgets/home/circular_button.dart';
import 'package:saib/custom_widgets/home/home-widget.dart';
class HomeScreen extends StatefulWidget{
  @override
  HomeScreenState createState()=>HomeScreenState();
}
class HomeScreenState extends State<HomeScreen> {
  late OverlayEntry entry;



  @override
  void initState() {
    entry = OverlayEntry(builder: (BuildContext) {
      return Container(
            color:Color(0xFF2B414D).withOpacity(0.9),
              child: Stack(
                children: [
                  Positioned(
                      bottom: 30,
                      right: 0,
                      left: 0,
                      child:
                      Stack(
                          alignment: Alignment.center,
                    children: [
                      CircularButton(icon:Icon(
                        Icons.transfer_within_a_station,
                        size: 35.0,
                      ),label: 'Text Transfer',onPressed:onCircularButtonPressed,deg: 180,),
                      CircularButton(icon:Icon(
                        Icons.money_off_sharp,
                        size: 35.0,
                      ),label: 'ATM Cash Withdrawl',onPressed: onCircularButtonPressed,deg:230,),
                      CircularButton(icon:Icon(
                        Icons.payment,
                        size: 35.0,
                      ),label: 'Pay',onPressed: onCircularButtonPressed,deg: 270,),
                      CircularButton(icon:Icon(
                        Icons.money,
                        size: 35.0,
                      ),label:'Cash In',onPressed: onCircularButtonPressed,deg:310),
                      CircularButton(icon:Icon(
                        Icons.mobile_screen_share,
                        size: 35.0,
                      ),label: 'Mobile Transfer',onPressed: onCircularButtonPressed,deg:360),
                    ],
                  ))
                ],
              )

          );
    }
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'HOME',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 20,
                  )),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.power_settings_new),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Overlay.of(context)?.insert(entry);
            },
            child: Icon(
              Icons.add,
              color: Color(0xFF2B414D),
            ),
            backgroundColor: Colors.yellow.shade600,
          ),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar:
          BottomAppNavBar(),
          //     BottomAppBar(
          //         notchMargin: 0,
          //         color: Color(0xFF2B414D),
          //         child:
          //
          //
          //         Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceAround,
          //             children: [
          //         Column(
          //           mainAxisSize: MainAxisSize.min,
          //             children: [
          //           Icon(Icons.home, color: Colors.white,),
          //
          //     Text(
          //       'Home',
          //       style: GoogleFonts.montserrat(
          //         textStyle: TextStyle(
          //             color: Colors.white,
          //             fontWeight: FontWeight.w500,
          //             fontSize: 11),
          //       ),
          //     ),
          //     ],
          //   ),
          // Column(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          // IconButton(onPressed: () {}, icon: Icon(Icons.card_travel_sharp,color: Colors.white,)),
          // Text(
          // 'Card Transactions',
          // style: GoogleFonts.montserrat(
          // textStyle: TextStyle(
          // color: Colors.white,
          // fontWeight: FontWeight.w500,
          // fontSize: 11),
          // ),
          // ),
          // ],
          // ),
          //  Column(mainAxisSize: MainAxisSize.min,
          //    children: [
          // IconButton(onPressed: () {}, icon: Icon(Icons.notifications,color: Colors.white,)),
          // Text(
          // 'Notifications',
          // style: GoogleFonts.montserrat(
          // textStyle: TextStyle(
          // color: Colors.white,
          // fontWeight: FontWeight.w500,
          // fontSize: 11),
          // ),
          // ),
          // ],
          // ),
          //  Column( mainAxisSize: MainAxisSize.min,
          //    children: [
          // IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz,color: Colors.white,)),
          // Text(
          // 'More',
          // style: GoogleFonts.montserrat(
          // textStyle: TextStyle(
          // color: Colors.white,
          // fontWeight: FontWeight.w500,
          // fontSize: 11),
          // ),
          // ),
          // ],
          // ),
          //
          // ],
          // ),
          // ),
          body: Stack(
            children: [
              BackgroundWidget(),
              HomeWidget(),
            ],
          )
      )
      ,
    );
  }

void onCircularButtonPressed(){
  log('dsssd');
    entry.remove();
}


}
