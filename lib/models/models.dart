import 'package:flutter/cupertino.dart';
import 'package:resto_friends_app/Widgets/ratingWidget.dart';

class FriendsListModel {
  final String name, imageLink, tag;
  FriendsListModel(
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

class RatingModel {
  RatingModel({@required this.ratingNum, this.flag});
  String ratingNum;
  bool flag;
}

class UserModel {
  static List list = [];
  UserModel(
      {@required this.userName,
      @required this.imageLink,
      @required this.ratingNum});
  String userName, imageLink, ratingNum;
}

class PostModel {
  PostModel({
    @required this.hotelImageLink,
    @required this.hotelName,
    @required this.streetName,
    @required this.loves,
    @required this.comments,
    @required this.friendList,
    @required this.likesFlag,
    @required this.postTime,
    this.commentsList,
    this.userModel,
  });

  String hotelImageLink, hotelName, postTime, streetName;
  bool friendList, likesFlag;
  int loves, comments;
  UserModel userModel;
  List<CommentModel> commentsList = [];
  List<PostDetailsDirWidget> ratingWidgetList = [];
}

class CommentModel {
  CommentModel({this.comment, @required this.commentId, this.replyList});
  int commentId;
  String comment;
  List<CommentModel> replyList = [];
}
