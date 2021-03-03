import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/export.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) => new Container(
          decoration: BoxDecoration(boxShadow: []),
          child: ClipRRect(
            //borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(statusList[index].imgUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}
