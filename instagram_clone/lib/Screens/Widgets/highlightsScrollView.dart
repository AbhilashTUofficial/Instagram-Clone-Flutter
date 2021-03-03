import 'package:flutter/material.dart';
import 'package:instagram_clone/export.dart';

class HighlightScrollView extends StatefulWidget {
  @override
  _HighlightScrollViewState createState() => _HighlightScrollViewState();
}

class _HighlightScrollViewState extends State<HighlightScrollView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: statusList.length - 6,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 2, left: 6, right: 6, bottom: 2),
                padding: EdgeInsets.all(2),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(200),
                  //border: Border.all(color: Colors.greenAccent, width:2),
                ),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(200)),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(statusList[index].imgUrl),
                  ),
                ),
              ),
              Text(
                statusList[index].name,
                style: TextStyle(color: Colors.white),
              ),
            ],
          );
        },
      ),
    );
  }
}
