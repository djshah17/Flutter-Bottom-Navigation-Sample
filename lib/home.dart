import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'messages.dart';
import 'more.dart';
import 'news.dart';
import 'profile.dart';

class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }

}

class HomeState extends State<Home>{

  int selectedIndex = 0;
  List<Widget> listWidgets = [News(),Profile(),Messages(),More()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return Scaffold(
        body: listWidgets[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.rss_feed),
              title: Text("News")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                title: Text("Profile")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
                title: Text("Messages")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.more),
                title: Text("More")
            ),
          ],
          unselectedItemColor: Colors.black38,
          selectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          selectedLabelStyle: TextStyle(color: Colors.black38),
          currentIndex: selectedIndex,
          onTap: onItemTapped,
        ),
    );
  }

  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

}