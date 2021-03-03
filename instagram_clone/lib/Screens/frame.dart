import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            icon: SvgPicture.asset(
              "assets/Icons/home_icon.svg",
              width: 24,
            ),
            title: SizedBox.shrink(),
            activeIcon: SvgPicture.asset(
              "assets/Icons/home_active_icon.svg",
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: SvgPicture.asset(
              "assets/Icons/search_icon.svg",
              width: 24,
            ),
            title: SizedBox.shrink(),
            activeIcon: SvgPicture.asset(
              "assets/Icons/search_active_icon.svg",
              width: 26,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.movie_creation_outlined,
              size: 26,
              color: Colors.white,
            ),
            title: SizedBox.shrink(),
            activeIcon: Icon(
              Icons.movie_creation,
              color: Colors.white,
              size: 24,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: SvgPicture.asset(
              "assets/Icons/love_icon.svg",
              width: 24,
            ),
            title: SizedBox.shrink(),
            activeIcon: SvgPicture.asset(
              "assets/Icons/loved_icon.svg",
              color: Colors.white,
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: CircleAvatar(
              radius: 12,
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
                radius: 12,
                backgroundImage: AssetImage("assets/Images/img1.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
