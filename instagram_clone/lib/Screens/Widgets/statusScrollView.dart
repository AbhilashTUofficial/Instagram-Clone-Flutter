import 'package:flutter/material.dart';
import 'package:instagram_clone/data/statusList.dart';

class StatusScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: statusList.length,
        itemBuilder: (BuildContext context, int index) {
          return index > 0
              ? Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.only(top: 2, left: 6, right: 6, bottom: 2),
                      padding: EdgeInsets.all(2),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.purple,
                            Colors.pink,
                            Colors.yellow,
                          ],
                          stops: [0.3,0.6,0.9],
                        ),
                        borderRadius: BorderRadius.circular(200),
                        //border: Border.all(color: Colors.greenAccent, width:2),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(200)
                        ),
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
                )
              : Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: 2, left: 6, right: 6, bottom: 2),
                          padding: EdgeInsets.all(2),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(200)
                            ),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(statusList[index].imgUrl),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 2,
                          right: 8,
                          child: Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.black,
                                width: 3,
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
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
