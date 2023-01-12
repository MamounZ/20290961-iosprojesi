import 'package:flutter/material.dart';
import './homepage.dart';
import './favorite.dart';
class bottom_navigation_bar extends StatefulWidget {
  const bottom_navigation_bar({Key? key}) : super(key: key);

  @override
  State<bottom_navigation_bar> createState() => _bottom_navigation_bar();
}

class _bottom_navigation_bar extends State<bottom_navigation_bar> {
  int _currentIndex = 0;
  final screens = [
    HomePage(),
    favorite(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}