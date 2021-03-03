import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/export.dart';

class Watch extends StatefulWidget {
  @override
  _WatchState createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 26),
        color: Colors.black,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage("assets/Images/img0.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black26,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Reels",
                      style: TextStyle(fontSize: 24, color: Colors.white70),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        "assets/Icons/camera_icon.svg",
                        color: Colors.white,
                        width: 28,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 40,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              SvgPicture.asset(
                                "assets/Icons/love_icon.svg",
                                color: Colors.white,
                                width: 28,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "72.5k",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              SvgPicture.asset(
                                "assets/Icons/comment_icon.svg",
                                color: Colors.white,
                                width: 28,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "312",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              SvgPicture.asset(
                                "assets/Icons/message_icon.svg",
                                color: Colors.white,
                                width: 28,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                        width: 240,
                        margin: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 140,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 16,
                                    backgroundImage:
                                        AssetImage(statusList[4].imgUrl),
                                  ),
                                  Text(
                                    statusList[4].name,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Follow",
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "Lorem ipsum dolor sit amet",
                                style: TextStyle(
                                    color: Colors.white70, letterSpacing: 0.5),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "4m Original Audio",
                                style: TextStyle(
                                    color: Colors.white70, letterSpacing: 0.5),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        margin: EdgeInsets.all(10),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white70,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
