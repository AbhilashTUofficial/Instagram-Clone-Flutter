import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/Widgets/highlightsScrollView.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/Images/img1.jpg"),
                  radius: 40,
                ),
                Container(
                  width: 260,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "3",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "934",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            Text(
                              "Followers",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "85",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            Text(
                              "Following",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "User name",
                  style: TextStyle(color: Colors.white, letterSpacing: 0.5),
                ),
                Text(
                  "Personal Blog",
                  style: TextStyle(color: Colors.white70, letterSpacing: 0.5),
                ),
                Text(
                  "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 2.5),
                    alignment: Alignment.center,
                    height: 40,
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.white, letterSpacing: 0.5),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.4),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 2.5),
                          alignment: Alignment.center,
                          height: 40,
                          child: Text(
                            "Promotions",
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 0.5),
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.4),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 2.5, horizontal: 4),
                          alignment: Alignment.center,
                          height: 40,
                          child: Text(
                            "Insights",
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 0.5),
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.4),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 2.5),
                          alignment: Alignment.center,
                          height: 40,
                          child: Text(
                            "Saved",
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 0.5),
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.4),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ],
                  )
                ],
              )),
          Container(height: 100, child: HighlightScrollView()),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white70,
              tabs: [
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Icon(
                    Icons.grid_on_sharp,
                    color: Colors.white70,
                    size: 26,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Icon(
                      Icons.assignment_ind_outlined,
                      color: Colors.white70,
                      size: 26,
                    )),
              ],
            ),
          ),
          Container(
            height: 150,
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3 - 4,
                        height: MediaQuery.of(context).size.width / 3,
                        child: Image(
                          image: AssetImage("assets/Images/img2.jpg"),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2),
                        width: MediaQuery.of(context).size.width / 3 - 4,
                        height: MediaQuery.of(context).size.width / 3,
                        child: Image(
                          image: AssetImage("assets/Images/img3.jpg"),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3 - 4,
                        height: MediaQuery.of(context).size.width / 3,
                        child: Image(
                          image: AssetImage("assets/Images/img4.jpg"),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3 - 4,
                        height: MediaQuery.of(context).size.width / 3,
                        child: Image(
                          image: AssetImage("assets/Images/img5.png"),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2),
                        width: MediaQuery.of(context).size.width / 3 - 4,
                        height: MediaQuery.of(context).size.width / 3,
                        child: Image(
                          image: AssetImage("assets/Images/img6.png"),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
