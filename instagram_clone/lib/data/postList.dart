class Post {
  String name;
  String proImg;
  int numOfImg;
  var postArray = List();
  String likeCount;
  bool liked;

  Post({this.name, this.proImg, this.numOfImg, this.postArray, this
      .likeCount,this.liked});
}

List<Post> postList = [
  Post(
    name: "Natsu Dragneel",
    proImg: "assets/Images/img2.jpg",
    postArray: [
      "assets/Images/img2.jpg",
      "assets/Images/img9.jpg",
    ],
    likeCount: "21,919",
    liked: false,
  ),
  Post(
    name: "Lelouch",
    proImg: "assets/Images/img3.jpg",
    postArray: [
      "assets/Images/img3.jpg",
    ],
    likeCount: "6,059",
    liked: true,
  ),
  Post(
    name: "Sasuke uchiha",
    proImg: "assets/Images/img5.png",
    postArray: [
      "assets/Images/img5.png",
      "assets/Images/img6.png",
      "assets/Images/img12.png",
    ],
    likeCount: "6,059",
    liked: true,
  ),
];
