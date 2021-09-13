import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saib/screens/home.dart';
import 'package:saib/screens/login.dart';

void main() {
  runApp(SaibApp());
}

class SaibApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Saib',
      theme: ThemeData(
        ),
      initialRoute: '/login',
      routes: {
    '/login':(context)=>LoginScreen(),
    '/home':(context)=>HomeScreen(),
    },
    );
  }
}






