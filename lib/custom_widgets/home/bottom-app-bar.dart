import 'package:flutter/material.dart';

class BottomAppNavBar extends StatefulWidget{
  @override
  BottomAppNavBarState createState() => BottomAppNavBarState();
}

class BottomAppNavBarState extends State<BottomAppNavBar>{
  int selIndex=0;

  @override
  Widget build(BuildContext context) {
   return
     BottomNavigationBar(
     type: BottomNavigationBarType.fixed,
     backgroundColor: Color(0xFF2B414D),
     selectedItemColor: Colors.white,
     unselectedItemColor: Colors.white.withOpacity(.60),
     selectedFontSize: 12,
     unselectedFontSize: 12,
     currentIndex:selIndex ,
     onTap: (value) {
       onItemTapped(value);
     },
     items: [
       BottomNavigationBarItem(
         label: 'Home',
         icon: Icon(Icons.home),
       ),
       BottomNavigationBarItem(
         label: 'Transactions',
         icon: Icon(Icons.card_travel_sharp),
       ),
       BottomNavigationBarItem(
         label: 'Notifications',
         icon: Icon(Icons.notifications),
       ),
       BottomNavigationBarItem(
         label: 'More',
         icon: Icon(Icons.more_horiz),
       ),
     ],
   );
  }
  void onItemTapped(int index){
    setState(() {
      this.selIndex=index;
    });
  }
}
