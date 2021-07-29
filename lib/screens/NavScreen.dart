import 'package:flutter/material.dart';
import 'package:newapp/screens/Home.dart';
import 'package:newapp/screens/Notifications.dart';
import 'package:newapp/screens/ShareAChune.dart';
import 'package:newapp/screens/UserScreens/UserProfile.dart';
import 'package:newapp/screens/globalvariables.dart';

///import 'package:newapp/screens/UserProfile.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  static List<Widget> pages = <Widget>[
    HomeScreen(),
    Notifications(),
    ShareAChune(),
    UserProfile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: pages.elementAt(selectedIndex)),
      floatingActionButton: Padding(
        padding: audioPlaying
            ? const EdgeInsets.only(right: 8.0, bottom: 70)
            : const EdgeInsets.all(8),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ShareAChune()),
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            activeIcon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
