import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../export.dart';

class PostTile extends StatefulWidget {
  @override
  _PostTileState createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Header
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(postList[index].proImg),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              postList[index].name,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white70,
                      )
                    ],
                  ),
                ),
                //Post
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: postList[index].postArray.length,
                      itemBuilder: (BuildContext context, int n) {
                        return Image(
                          image: AssetImage(postList[index].postArray[n]),
                        );
                      },
                    )),
                //Like Share Comment
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            postList[index].liked
                                ? GestureDetector(
                                    child: SvgPicture.asset(
                                      "assets/Icons/loved_icon.svg",
                                      width: 26,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        postList[index].liked = false;
                                      });
                                    },
                                  )
                                : GestureDetector(
                                    child: SvgPicture.asset(
                                      "assets/Icons/love_icon.svg",
                                      width: 26,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        postList[index].liked = true;
                                      });
                                    },
                                  ),
                            SvgPicture.asset(
                              "assets/Icons/comment_icon.svg",
                              width: 26,
                            ),
                            SvgPicture.asset(
                              "assets/Icons/message_icon.svg",
                              width: 26,
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: SvgPicture.asset(
                          "assets/Icons/save_icon.svg",
                          width: 26,
                        ),
                      )
                    ],
                  ),
                ),
                //Like count
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    postList[index].likeCount + " likes",
                    style: TextStyle(color: Colors.white, letterSpacing: 1),
                  ),
                ),
                //Description
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                  height: 60,
                  child: Text(
                    "lorem ipsum dolor sit "
                    "amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ",
                    style: TextStyle(color: Colors.white, letterSpacing: 0.5),
                  ),
                ),
                //view all
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "View all 592 comments ",
                    style: TextStyle(color: Colors.white54, letterSpacing: 0.5),
                  ),
                ),
                //add comment
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 14,
                            backgroundImage: AssetImage(postList[0].proImg),
                          ),
                          Text(
                            "  Add a comment...",
                            style: TextStyle(
                                color: Colors.white54, letterSpacing: 0.5),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 16,
                          ),
                          Icon(
                            Icons.emoji_emotions,
                            color: Colors.orangeAccent,
                            size: 16,
                          ),
                          Icon(
                            Icons.add_circle_outline,
                            color: Colors.white54,
                            size: 16,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
