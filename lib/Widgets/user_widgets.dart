import 'package:flutter/material.dart';
import 'package:resto_friends_app/models/models.dart' as DataModel;
import 'package:resto_friends_app/utils/colors.dart';
import 'package:resto_friends_app/utils/text_styles.dart';
import 'package:resto_friends_app/utils/const.dart';
import 'package:resto_friends_app/utils/buttons.dart';
import 'package:resto_friends_app/models/model_data.dart';
import 'package:resto_friends_app/screens/post/post_screen.dart';
import 'package:resto_friends_app/screens/comment/comment_screen.dart';

DataModel.UserModel userPostInfoModel;
Widget userWidget(DataModel.PostModel postModel) {
  userPostInfoModel = postModel.userModel;
  return Container(
    margin: EdgeInsets.all(20),
    child: Row(
      children: [
        Container(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: MyColors.white,
            backgroundImage: NetworkImage(postModel.userModel.imageLink),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            // width: 150,
            // color: Colors.red,
            margin: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    postModel.userModel.userName,
                    style: TextStyles.montserratBold(
                        color: MyColors.indigo,
                        fontSize: WidgetSizes.boldTextSize),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Rated a new restaurant',
                  maxLines: 1,
                  style: TextStyles.montserratBold(
                      color: MyColors.grey300,
                      fontSize: WidgetSizes.lightTextSize),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.alarm,
                      color: MyColors.grey400,
                      size: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          'Posted ${postModel.postTime} hours ago',
                          style: TextStyles.montserratBold(
                              color: MyColors.grey300,
                              fontSize: WidgetSizes.lightTextSize),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              RatingContainer(
                ratings: ratingNum[2],
                height: 30,
                width: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Outstanding!',
                style: TextStyles.montserratBold(
                    color: MyColors.red, fontSize: WidgetSizes.lightTextSize),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class PostWidget extends StatefulWidget {
  PostWidget({@required this.model, this.screenChangeCallBack});
  final DataModel.PostModel model;
  final Function screenChangeCallBack;
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 350,
      width: double.infinity,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return PostDetailsHeader();
                }),
              );
            },
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(10),
                  left: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: NetworkImage(widget.model.hotelImageLink),
                  fit: BoxFit.cover,
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: MyColors.pinkLight,
                      blurRadius: 40,
                      offset: Offset(0, 75),
                      spreadRadius: -50)
                ],
              ),
              margin: EdgeInsets.all(20),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Container(
                      height: 90,
                      width: size.width * .6,
                      color: MyColors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 50,
                              margin: EdgeInsets.only(left: 20),
                              child: MyDropDownButton(
                                  hotel: widget.model.hotelName)),
                          Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                widget.model.streetName,
                                style: TextStyles.montserratBold(
                                    color: MyColors.grey300,
                                    fontSize: WidgetSizes.boldTextSize),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (widget.model.likesFlag == false) {
                              setState(() {
                                widget.model.loves = widget.model.loves + 1;
                                widget.model.likesFlag = true;
                                print('If called');
                              });
                            } else if (widget.model.likesFlag == true) {
                              setState(() {
                                widget.model.loves = widget.model.loves - 1;
                                widget.model.likesFlag = false;
                                print('else if called');
                              });
                            }
                          });
                        },
                        child: Icon(
                          widget.model.likesFlag
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          size: 35,
                          color: MyColors.red,
                        ),
                      ),
                      Text(
                        '${widget.model.loves}',
                        style: TextStyles.montserratBold(
                            color: MyColors.indigo,
                            fontSize: WidgetSizes.boldTextSize),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: widget.screenChangeCallBack,
                    child: Row(
                      children: [
                        Icon(
                          Icons.comment_bank,
                          color: MyColors.grey400,
                        ),
                        Text(
                          '${widget.model.comments} comments',
                          style: TextStyles.montserratBold(
                              color: MyColors.grey400,
                              fontSize: WidgetSizes.lightTextSize),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: MyColors.grey400,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
