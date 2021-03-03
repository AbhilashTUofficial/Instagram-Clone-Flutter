import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/export.dart';

class Frame extends StatefulWidget {
  @override
  _FrameState createState() => _FrameState();
}

class _FrameState extends State<Frame> {
  int _currentTab = 0;
  final tabs = [
    Container(),
    HomePage(),
    Explore(),
    Watch(),
    Notifications(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(_currentTab + 1),
      body: tabs[_currentTab + 1],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.white,
            ),
            title: SizedBox.shrink(),
            activeIcon: Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.search_rounded,
              size: 30,
              color: Colors.white,
            ),
            title: SizedBox.shrink(),
            activeIcon: Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.video_collection_outlined,
              size: 30,
              color: Colors.white,
            ),
            title: SizedBox.shrink(),
            activeIcon: Icon(
              Icons.video_collection,
              color: Colors.white,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.white,
            ),
            title: SizedBox.shrink(),
            activeIcon: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage("assets/Images/img1.jpg"),
            ),
            title: SizedBox.shrink(),
            activeIcon: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/Images/img1.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
