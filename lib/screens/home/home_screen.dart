import 'package:flutter/material.dart';
import 'package:resto_friends_app/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:resto_friends_app/utils/colors.dart';
import 'package:resto_friends_app/utils/text_styles.dart';
import 'package:resto_friends_app/utils/buttons.dart';
import 'package:resto_friends_app/models/model_data.dart';
import 'package:resto_friends_app/models/models.dart' as DataModel;
import 'package:resto_friends_app/Widgets/user_widgets.dart';
import 'package:resto_friends_app/Widgets/search_widget.dart';
import 'package:resto_friends_app/screens/comment/comment_screen.dart';
import 'package:resto_friends_app/Widgets/comment_widget.dart';

Widget home(BuildContext context) {
  print('Home fun called');
  return SafeArea(
    child: Container(
      child: Column(
        children: [
          searchBar(),
          homeBody(userPostData, context),
        ],
      ),
    ),
    // child:
  );
}

Widget homeBody(List postWidget, BuildContext context) {
  return Expanded(
    child: ListView.builder(
      itemCount: postWidget.length,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (BuildContext ctx, int index) {
        return MakeHomeWidgetList(
          postWidget: postWidget[index],
        );
      },
    ),
  );
}

class MakeHomeWidgetList extends StatefulWidget {
  const MakeHomeWidgetList({this.postWidget});

  final DataModel.PostModel postWidget;
  @override
  _MakeHomeWidgetListState createState() => _MakeHomeWidgetListState();
}

class _MakeHomeWidgetListState extends State<MakeHomeWidgetList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          userWidget(
            widget.postWidget,
          ),
          PostWidget(
            model: widget.postWidget,
            screenChangeCallBack: () {
              return Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Comments(postModel: widget.postWidget)));
            },
          ),
          CommentWidget(
            postModel: widget.postWidget,
            screenChangeCallBack: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Comments(postModel: widget.postWidget))).then((value) {
              setState(() {});
            }),
          ),
          if (widget.postWidget.friendList) friendsList(),
        ],
      ),
    );
  }
}

Widget friendsList() {
  return Column(
    children: [
      Container(
        color: MyColors.grey100,
        height: 100,
        margin: EdgeInsets.only(top: 20),
        // margin: EdgeInsets.only(top: 10),
        child: Container(
          color: MyColors.grey100,
          margin: EdgeInsets.only(left: 10, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'RestoFriends',
                style: TextStyles.montserratBold(
                    color: MyColors.indigo, fontSize: WidgetSizes.boldTextSize),
              ),
              Text(
                'View all',
                style: TextStyles.montserratBold(
                    color: MyColors.red, fontSize: WidgetSizes.boldTextSize),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 270,
        color: MyColors.grey100,
        child: ListView.builder(
          itemCount: friendListData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return restoFriendsListWidget(friendListData[index]);
          },
        ),
      ),
    ],
  );
}

Widget restoFriendsListWidget(DataModel.FriendsListModel list) {
  return Container(
    height: 260,
    margin: EdgeInsets.only(left: 10, bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 230,
          width: 150,
          color: MyColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 15),
                    child: Icon(
                      Icons.cancel_outlined,
                      color: MyColors.grey100,
                      size: 20,
                    ),
                  ),
                ],
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(list.imageLink),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                list.name,
                style: TextStyles.montserratBold(
                    color: MyColors.indigo,
                    fontSize: WidgetSizes.lightTextSize),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                list.tag,
                style: TextStyles.montserratBold(
                    color: MyColors.grey400,
                    fontSize: WidgetSizes.lightTextSize),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(10),
                      left: Radius.circular(10),
                    ),
                    color: MyColors.red,
                  ),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 40,
                  width: 150,
                  child: Buttons.appButton('Add Request')),
            ],
          ),
        ),
      ],
    ),
  );
}
