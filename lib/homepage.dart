import 'package:bottomnav2/call.dart';
import 'package:bottomnav2/chat.dart';
import 'package:bottomnav2/search.dart';
import 'package:bottomnav2/settings.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var pageIndex = [
    Home(),
    Settings(),
    Search(),
    Chat(),
    Call(),
  ];
  int indexnumber = 0;

  void onItemTapped(int index) {
    setState(() {
      indexnumber = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.cyan ,
        title: Text("Bottom Navigation Bar"),
      ),
      body: Center(
        child: pageIndex[indexnumber],
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Call",
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: indexnumber,
        onTap: onItemTapped,
      ),
    );
  }
}
