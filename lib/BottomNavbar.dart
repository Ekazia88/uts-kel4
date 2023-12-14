
import 'package:flutix/HomePage.dart';
import 'package:flutix/Profile.dart';
import 'package:flutix/Ticket.dart';
import 'package:flutix/myticket.dart';
import 'package:flutter/material.dart';

class BtnBar extends StatefulWidget {
  const BtnBar({super.key});
  @override
  _BtnBarState createState() => _BtnBarState();
}

class _BtnBarState extends State<BtnBar> {
  int _currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      currentIndex: _currentIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: 'Whislist',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        switch (index) {
          case 0:
            Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
                return HomePage();
              })
            );
            break;
          case 1:
            Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
                return MyTicket();
              })
            );
            break;
          case 2:
            Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
                return ProfilePage();
              })
            );
            break;
        }
      },
      selectedItemColor: Color(0xFFF2C94C), // Change the color of the selected item
      unselectedItemColor: Colors.white, // Change the color of unselected items
    );
  }
}
   