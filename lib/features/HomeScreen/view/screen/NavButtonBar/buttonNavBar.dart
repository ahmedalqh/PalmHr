import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State {
  int _selectedTab = 4;

  List _pages = [
    Center(
      child: Text("لوحة تحكم"),
    ),
    Center(
      child: Text("الموظفين"),
    ),
    Center(
      child: Text("اضافه"),
    ),
    Center(
      child: Text("طلباتي"),
    ),
    Center(
      child: Text("نشاط"),
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
        selectedItemColor: Color.fromARGB(255, 86, 168, 83),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined), label: "لوحة التحكم"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt), label: "الموظفين"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: "اضف جديد"),
          BottomNavigationBarItem(
              icon: Icon(Icons.border_outer_rounded), label: "طلباتي"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "نشاط"),
        ],
      ),
    );
  }
}
