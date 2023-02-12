import 'package:flutter/material.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State{
  int _selectedTab = 0;

  List _pages = [
    Center(
      child: Text("Home"),
    ),
    
    Center(
      child: Text("Products"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt), label: "Members"),
          BottomNavigationBarItem(
              icon: Icon(Icons.room_outlined), label: "Meeting_Rooms"),
        ],
      ),
    );
  }
}
