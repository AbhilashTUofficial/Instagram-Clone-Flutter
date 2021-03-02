import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  int pageIndex;

  CustomAppBar(this.pageIndex);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      pageIndex %2 != 0 || pageIndex==4? Size.fromHeight(60) : Size.fromHeight
        (100);
}

class _CustomAppBarState extends State<CustomAppBar> {
  Widget qrScanner() {
    return Stack(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white70, width: 2.5),
              borderRadius: BorderRadius.circular(8)),
          child: Stack(
            children: [
              Positioned(
                top: 5,
                left: 5,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white70, width: 2.0),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ],
          ),
        ),
        //left
        Positioned(
          top: 10,
          left: 0,
          child: Container(
            width: 3,
            height: 10,
            color: Colors.black,
          ),
        ),
        //right
        Positioned(
          top: 10,
          left: 27.5,
          child: Container(
            width: 3,
            height: 10,
            color: Colors.black,
          ),
        ),
        //top
        Positioned(
          top: 0,
          left: 10,
          child: Container(
            width: 10,
            height: 3,
            color: Colors.black,
          ),
        ),
        //bottom
        Positioned(
          top: 27.5,
          left: 10,
          child: Container(
            width: 10,
            height: 3,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.pageIndex == 1) {
      return AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.add_box_outlined,
              size: 28,
            ),
            Text(
              "Instagram",
              style: TextStyle(fontFamily: "Billabong", fontSize: 35),
            ),
            SvgPicture.asset(
              "assets/Icons/message_icon.svg",
              width: 28,
            ),
          ],
        ),
      );
    } else if (widget.pageIndex == 2) {
      return AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.black,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 90,
                  height: 35,
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_rounded,
                        color: Colors.white54,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Search",
                          style: TextStyle(color: Colors.white54),
                        ),
                      ),
                    ],
                  ),
                ),
                qrScanner()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 14),
                  width: 88,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white12, width: 2.0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "IGTv",
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 14),
                  width: 88,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white12, width: 2.0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Travel",
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 14),
                  width: 108,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white12, width: 2.0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Architecture",
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 14),
                  width: 88,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white12, width: 2.0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Fashion",
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }
    else if(widget.pageIndex==3){
      return Container();
    }
    else if(widget.pageIndex==4){
      return AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Activity",
              style: TextStyle( fontSize: 28),
            ),
            Icon(Icons.more_vert,size: 30,),
          ],
        ),
      );
    }
    else if(widget.pageIndex==5){
      return AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text(
              "Insta_userName",
              style: TextStyle(fontSize: 22),
            ),
            Row(
              children: [
                Icon(
                  Icons.add_box_outlined,
                  size: 28,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.menu,size:32,color: Colors.white,
                )
              ],
            ),
          ],
        ),
      );
    }
    return null;
  }
}
