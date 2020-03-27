import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friendsbirthday/home.dart';
import 'package:friendsbirthday/story_page.dart';

class TabPage extends StatefulWidget {

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        onTap: (index){
          _currentTabIndex = index;
          print(_currentTabIndex);
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book),
              title: Text('Story')
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.game_controller),
              title: Text('Game')
          ),
        ],
      ),
      tabBuilder: (BuildContext context,int index){
        switch(index){
          case 0:
            return Home();
            break;
          case 1:
            return StoryPage();
            break;
          case 2:
            return null;
            break;
        }
      },
    );
  }
}
