import 'package:flutter/cupertino.dart';

class FriendsListModels {
  String name, imageLink, tag;
  FriendsListModels(
      {@required this.name, @required this.imageLink, @required this.tag});
}

class ProfileRestoListModel {
  ProfileRestoListModel({
    @required this.imageLink,
    @required this.ratingNum,
    @required this.fruitName,
    @required this.dishName,
  });
  final String imageLink, ratingNum, fruitName, dishName;
}

class ProfileDetailsImagesModel {
  ProfileDetailsImagesModel({@required this.imageLink});
  final String imageLink;
}
