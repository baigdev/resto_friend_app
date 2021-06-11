import 'package:flutter/material.dart';
import 'package:resto_friends_app/Constants.dart';
import 'package:resto_friends_app/Models.dart';
import 'package:resto_friends_app/ReusableWidgets.dart';
import 'package:intl/intl.dart';
import 'package:resto_friends_app/Screens.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyAppColors.white,
        title: Text(
          'Profile',
          style: TextFonts.montserratBold(
              color: MyAppColors.grey300, fontSize: 15),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainScreen()));
          },
          child: Icon(
            Icons.arrow_back,
            color: MyAppColors.grey300,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.edit_rounded,
              color: MyAppColors.grey300,
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
                      UserContainer(),
                      FollowingRow(),
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
              ItemsGrid(),
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

class UserContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: MyAppColors.white,
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
            style: TextFonts.montserratBold(color: Colors.indigo, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: MyAppColors.grey300,
              ),
              Text(
                'Dhaka Bangladesh',
                style: TextFonts.montserratBold(
                    color: Colors.grey.shade300, fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FollowingRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.grey.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '121k',
                  style: TextFonts.montserratBold(
                      color: Colors.pink, fontSize: 12),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Followers',
                  style: TextFonts.montserratBold(
                      color: MyAppColors.grey400, fontSize: 12),
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
                  style: TextFonts.montserratBold(
                      color: Colors.pink, fontSize: 12),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Following',
                  style: TextFonts.montserratBold(
                      color: MyAppColors.grey400, fontSize: 12),
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
                  style: TextFonts.montserratBold(
                      color: Colors.pink, fontSize: 12),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Taste Makers',
                  style: TextFonts.montserratBold(
                      color: MyAppColors.grey400, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemsGrid extends StatefulWidget {
  @override
  _ItemsGridState createState() => _ItemsGridState();
}

class _ItemsGridState extends State<ItemsGrid> {
  List gridItemsList = [];

  generateItems() {
    gridItemsList.add(ProfileRestoListModel(
        imageLink:
            'https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2015/07/fruitSalad-98841227-770x533-1-650x428.jpg',
        ratingNum: '5',
        fruitName: 'Tropical Fruit',
        dishName: 'Greyish day'));
    gridItemsList.add(ProfileRestoListModel(
        imageLink:
            'https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/articles/health_tools/diet_fruit_sugar_slideshow/493ss_thinkstock_rf_fresh_mango_cubes_in_wooden_bowl.jpg',
        ratingNum: '4',
        fruitName: 'Orange Fruits',
        dishName: 'Portugecis'));
    gridItemsList.add(ProfileRestoListModel(
        imageLink:
            'https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2015/07/fruitSalad-98841227-770x533-1-650x428.jpg',
        ratingNum: '5',
        fruitName: 'Springfield',
        dishName: 'States Dishes'));
    gridItemsList.add(ProfileRestoListModel(
        imageLink:
            'https://images.chinahighlights.com/allpicture/2017/11/921000f9142441c7acb4e578_cut_800x500_61.jpg',
        ratingNum: '3',
        fruitName: 'Breakfast Dine',
        dishName: 'Costa Rica'));
    gridItemsList.add(ProfileRestoListModel(
        imageLink:
            'https://images.chinahighlights.com/allpicture/2017/11/921000f9142441c7acb4e578_cut_800x500_61.jpg',
        ratingNum: '3',
        fruitName: 'Breakfast Dine',
        dishName: 'Costa Rica'));
    gridItemsList.add(ProfileRestoListModel(
        imageLink:
            'https://images.chinahighlights.com/allpicture/2017/11/921000f9142441c7acb4e578_cut_800x500_61.jpg',
        ratingNum: '3',
        fruitName: 'Breakfast Dine',
        dishName: 'Costa Rica'));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    generateItems();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GridView.builder(
        scrollDirection: Axis.vertical,
        primary: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: size.width * .0022),
        itemCount: gridItemsList.length,
        itemBuilder: (BuildContext ctx, index) {
          return GridItemsContainer(model: gridItemsList[index]);
        });
  }
}

class GridItemsContainer extends StatelessWidget {
  GridItemsContainer({
    @required this.model,
  });
  final ProfileRestoListModel model;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    DateTime now = DateTime.now();
    String date = DateFormat('MM-dd-yyyy').format(now);
    return Container(
      color: MyAppColors.white,
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
                    ratings: model.ratingNum,
                    height: 30,
                    width: 30,
                  )),
            ],
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                model.fruitName,
                style: TextFonts.montserratBold(
                    color: Colors.indigo, fontSize: 15),
              )),
          Container(
            margin: EdgeInsets.only(right: 15, left: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  model.dishName,
                  style: TextFonts.montserratBold(
                      color: Colors.grey.shade300, fontSize: 10),
                ),
                Text(
                  date,
                  style: TextFonts.montserratBold(
                      color: Colors.grey.shade300, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
