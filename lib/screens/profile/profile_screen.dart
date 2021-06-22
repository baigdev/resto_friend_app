import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:resto_friends_app/models/model_data.dart';
import 'package:resto_friends_app/screens/main/main_screen.dart';
import 'package:resto_friends_app/utils/colors.dart';
import 'package:resto_friends_app/utils/text_styles.dart';
import 'package:resto_friends_app/utils/buttons.dart';
import 'package:resto_friends_app/models/models.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.white,
        title: Text(
          'Profile',
          style:
              TextStyles.montserratBold(color: MyColors.grey300, fontSize: 15),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainScreen()));
          },
          child: Icon(
            Icons.arrow_back,
            color: MyColors.grey300,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.edit_rounded,
              color: MyColors.grey300,
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: NestedScrollView(
          headerSliverBuilder: (context, bool isInnerScroll) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                pinned: true,
                floating: true,
                expandedHeight: 350,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Column(
                    children: [
                      userContainer(),
                      followingRow(),
                    ],
                  ),
                ),
                bottom: TabBar(
                  labelColor: Colors.indigo,
                  tabs: [
                    Tab(text: 'My Restaurant'),
                    Tab(text: 'Whilst'),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              ItemsGrid(context),
              Container(
                child: Center(
                  child: Text('Whilst'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget userContainer() {
  return Container(
    height: 200,
    color: MyColors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1583195764036-6dc248ac07d9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=755&q=80'),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Chloe Hannouille',
          style:
              TextStyles.montserratBold(color: MyColors.indigo, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              color: MyColors.grey300,
            ),
            Text(
              'Dhaka Bangladesh',
              style: TextStyles.montserratBold(
                  color: MyColors.grey300, fontSize: 13),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget followingRow() {
  return Container(
    height: 80,
    color: MyColors.grey100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '121k',
                style: TextStyles.montserratBold(
                    color: MyColors.pink, fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Followers',
                style: TextStyles.montserratBold(
                    color: MyColors.grey400, fontSize: 12),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '152',
                style: TextStyles.montserratBold(
                    color: MyColors.pink, fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Following',
                style: TextStyles.montserratBold(
                    color: MyColors.grey400, fontSize: 12),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '455',
                style: TextStyles.montserratBold(
                    color: MyColors.pink, fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Taste Makers',
                style: TextStyles.montserratBold(
                    color: MyColors.grey400, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget ItemsGrid(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return GridView.builder(
      scrollDirection: Axis.vertical,
      primary: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: size.width * .0022),
      itemCount: profileGridItemsData.length,
      itemBuilder: (BuildContext ctx, index) {
        return gridItemsContainer(profileGridItemsData[index]);
      });
}

Widget gridItemsContainer(ProfileRestoListModel model) {
  DateTime now = DateTime.now();
  String date = DateFormat('MM-dd-yyyy').format(now);
  return Container(
    color: MyColors.white,
    margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 120,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(5),
                  right: Radius.circular(5),
                ),
                image: DecorationImage(
                  image: NetworkImage(model.imageLink),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 30,
                right: 15,
                child: RatingContainer(
                  ratings: ratingNum[1],
                  height: 30,
                  width: 30,
                )),
          ],
        ),
        Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              model.fruitName,
              style: TextStyles.montserratBold(
                  color: MyColors.indigo, fontSize: 15),
            )),
        Container(
          margin: EdgeInsets.only(right: 15, left: 15, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.dishName,
                style: TextStyles.montserratBold(
                    color: MyColors.grey300, fontSize: 10),
              ),
              Text(
                date,
                style: TextStyles.montserratBold(
                    color: MyColors.grey300, fontSize: 10),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
