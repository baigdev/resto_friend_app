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

class UserPostInfoModel {
  UserPostInfoModel(
      {@required this.userName,
      @required this.imageLink,
      @required this.postTime,
      @required this.ratingNum});
  String userName, imageLink, postTime, ratingNum;
}

class UserPostModel {
  UserPostModel({
    @required this.hotelImageLink,
    @required this.hotelName,
    @required this.streetName,
    @required this.loves,
    @required this.comments,
  });
  String hotelImageLink, hotelName, streetName, loves, comments;
}
