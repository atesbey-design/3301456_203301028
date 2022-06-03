import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotifycode/Pages/firestoreUsers.dart';
import 'package:spotifycode/Pages/home.dart';

import 'package:spotifycode/Pages/oneMusicArea.dart';
import 'package:spotifycode/Pages/search.dart';
import 'package:spotifycode/Pages/setting.dart';
import 'package:spotifycode/main.dart';
import 'package:spotifycode/model/apiServices/postmodel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> widgetOptions = <Widget>[
    Text(
      'Index 0: AnaSayfa',
      style: optionStyle,
    ),
    Text(
      'Index 1: Kütüphane',
      style: optionStyle,
    ),
    Text(
      'Index 2: Ara',
      style: optionStyle,
    ),
    Text(
      'Index 3: Ayarlar',
      style: optionStyle,
    )
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    int Data = 0;
    Widget child = Container();
    if (selectedIndex == 0) {
      child = homePageBuild();
    } else if (selectedIndex == 1) {
      child = usersData();
    } else if (selectedIndex == 2) {
      child = postModel();
    } else if (selectedIndex == 3) {
      child = settingPage();
    }

    return Scaffold(
        body: SizedBox.expand(
          child: SizedBox.expand(
            child: child,
          ),
        ),
        bottomNavigationBar: bottomTab());
  }

  Widget bottomTab() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(255, 1, 0, 26),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ANASAYFA'),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_add), label: 'KÜTÜPHANE'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'ARAMA'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'AYARLAR'),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Color.fromARGB(255, 250, 253, 255),
      unselectedItemColor: Color.fromARGB(255, 126, 120, 120),
      onTap: onItemTapped,
    );
  }
}
