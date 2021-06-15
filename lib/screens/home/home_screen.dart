import 'package:flutter/material.dart';
import 'package:resto_friends_app/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:resto_friends_app/utils/models.dart';
import 'package:resto_friends_app/screens/post/post_screen.dart';
import 'package:resto_friends_app/utils/colors.dart';
import 'package:resto_friends_app/utils/text_styles.dart';
import 'package:resto_friends_app/utils/buttons.dart';

class Home extends StatelessWidget {
  final List userPostInfoList = [];
  final List userPostList = [];
  @override
  initState() {
    print('Init Called');
  }

  @override
  Widget build(BuildContext context) {
    makeUserPostInfoModel(userPostInfoList);
    makeUserPostModel(userPostList);
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Find a restaurant...',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.search,
                    color: MyColors.red,
                  ),
                  suffixIcon: Icon(Icons.mic_none),
                ),
              ),
            ),
            homeBody(userPostInfoList, userPostList),
          ],
        ),
      ),
      // child:
    );
  }
}

makeUserPostInfoModel(List list) {
  list.add(UserPostInfoModel(
    userName: 'Chloe Hannouillie',
    postTime: '3',
    ratingNum: '4',
    imageLink:
        'https://images.unsplash.com/photo-1589673644418-f8cb57a01d3f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
  ));
  list.add(UserPostInfoModel(
    userName: 'Donalda Synedra',
    imageLink:
        'https://images.unsplash.com/photo-1597248374161-426f0d6d2fc9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
    ratingNum: '5',
    postTime: '4',
  ));
  list.add(UserPostInfoModel(
    userName: 'Maria Lokhndy',
    imageLink:
        'https://images.unsplash.com/photo-1592677484740-4c40a559fce3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
    postTime: '1',
    ratingNum: '3',
  ));
  list.add(UserPostInfoModel(
    userName: 'Papa Ki Rani',
    imageLink:
        'https://media.gettyimages.com/photos/studio-portrait-of-a-beautiful-girl-picture-id1224234453?s=2048x2048',
    ratingNum: '2',
    postTime: '1',
  ));
}

makeUserPostModel(List list) {
  list.add(UserPostModel(
    hotelImageLink:
        'https://images.unsplash.com/photo-1468777675496-5782faaea55b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80',
    hotelName: 'Italian Dastrkhaa',
    streetName: 'Main Shahr-e-faisal karachi',
    loves: '245',
    comments: '440',
  ));
  list.add(UserPostModel(
    hotelImageLink:
        'https://images.unsplash.com/photo-1615865441757-e5328eb6a5ad?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    hotelName: 'Indus Waly',
    streetName: 'Clifton karachi',
    loves: '120',
    comments: '212',
  ));
  list.add(UserPostModel(
    hotelImageLink:
        'https://images.unsplash.com/photo-1576398764960-f9d9e9071cda?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80',
    hotelName: 'Jasmine',
    streetName: 'Main korangi cross karachi',
    loves: '860',
    comments: '565',
  ));
  list.add(UserPostModel(
    hotelImageLink:
        'https://images.unsplash.com/photo-1521305916504-4a1121188589?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80',
    streetName: 'Qalandri Burger',
    hotelName: 'Plot EE defence view phase II karchi',
    loves: '765',
    comments: '143',
  ));
}

Widget homeBody(List infoList, List postList) {
  return Expanded(
    child: Container(
      child: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                UserPostInfoWidget(
                  model: infoList[0],
                ),
                UserPostWidget(model: postList[0]),
                MakeFriendsList(),
                ListView.builder(
                  itemCount: infoList.length - 1,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext ctx, int index) {
                    return Column(
                      children: [
                        UserPostInfoWidget(model: infoList[index + 1]),
                        UserPostWidget(model: postList[index + 1]),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class UserPostInfoWidget extends StatelessWidget {
  UserPostInfoWidget({@required this.model});
  final UserPostInfoModel model;

  Widget header() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            child: CircleAvatar(
              radius: 30,
              backgroundColor: MyColors.white,
              backgroundImage: NetworkImage(model.imageLink),
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
                      model.userName,
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
                            'Posted ${model.postTime} hours ago',
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
                  ratings: model.ratingNum,
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

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      child: Column(
        children: [
          header(),
        ],
      ),
    );
  }
}

class UserPostWidget extends StatelessWidget {
  UserPostWidget({@required this.model});

  final UserPostModel model;
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
                  image: NetworkImage(model.hotelImageLink),
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
                              child: MyDropDownButton(hotel: model.hotelName)),
                          Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                model.streetName,
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
                      Icon(
                        Icons.favorite_outline,
                        size: 35,
                        color: MyColors.red,
                      ),
                      Text(
                        model.loves,
                        style: TextStyles.montserratBold(
                            color: MyColors.indigo,
                            fontSize: WidgetSizes.boldTextSize),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.comment_bank,
                        color: MyColors.grey400,
                      ),
                      Text(
                        '${model.comments} comments',
                        style: TextStyles.montserratBold(
                            color: MyColors.grey400,
                            fontSize: WidgetSizes.lightTextSize),
                      ),
                    ],
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

class RestoFriendsListWidget extends StatelessWidget {
  RestoFriendsListWidget({@required this.model});
  final FriendsListModels model;
  @override
  Widget build(BuildContext context) {
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
                        color: Colors.grey.shade200,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(model.imageLink),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  model.name,
                  style: TextStyles.montserratBold(
                      color: MyColors.indigo,
                      fontSize: WidgetSizes.lightTextSize),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  model.tag,
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
}

class MakeFriendsList extends StatelessWidget {
  final List modelList = [];

  @override
  Widget build(BuildContext context) {
    modelList.add(FriendsListModels(
        name: 'Michael Korwin',
        imageLink:
            'https://images.unsplash.com/photo-1560241804-02b7b1bc9d55?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=328&q=80',
        tag: 'Top Tallets'));
    modelList.add(FriendsListModels(
        name: 'Alberto Conti',
        imageLink:
            'https://images.unsplash.com/photo-1583195764036-6dc248ac07d9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=755&q=80',
        tag: 'Top Tallets'));
    modelList.add(FriendsListModels(
        name: 'Alina',
        imageLink:
            'https://images.unsplash.com/photo-1594744803329-e58b31de8bf5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80',
        tag: 'Top Tallets'));
    modelList.add(FriendsListModels(
        name: 'Asma',
        imageLink:
            'https://images.unsplash.com/photo-1557555187-23d685287bc3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
        tag: 'Top Tallets'));

    return Column(
      children: [
        Container(
          color: Colors.grey.shade100,
          height: 100,
          margin: EdgeInsets.only(top: 20),
          // margin: EdgeInsets.only(top: 10),
          child: Container(
            color: Colors.grey.shade100,
            margin: EdgeInsets.only(left: 10, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RestoFriends',
                  style: TextStyles.montserratBold(
                      color: MyColors.indigo,
                      fontSize: WidgetSizes.boldTextSize),
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
          color: Colors.grey.shade100,
          child: ListView.builder(
              itemCount: modelList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return RestoFriendsListWidget(
                  model: modelList[index],
                );
              }),
        ),
      ],
    );
  }
}
