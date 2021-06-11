import 'package:flutter/material.dart';
import 'package:resto_friends_app/Constants.dart';
import 'package:resto_friends_app/HomeReusableWidgets.dart';
import 'package:resto_friends_app/ProfileReusbaleWidgets.dart';
import 'addReviewScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int globalCurrentIndex = 0;

  Widget buildBody() {
    if (globalCurrentIndex == 0)
      return Home();
    else if (globalCurrentIndex == 3) return ProfileScreen();
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: makeBottomNavBar(),
      body: buildBody(),
    );
  }

  BottomNavigationBar makeBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: globalCurrentIndex,
      // backgroundColor: Colors.green,
      selectedItemColor: Colors.red,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: WidgetSizes.bottomNavIconsSize,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              size: WidgetSizes.bottomNavIconsSize,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: FloatingActionButton(
              onPressed: () {},
              elevation: 5,
              backgroundColor: MyAppColors.red,
              child: Icon(
                Icons.add,
                size: WidgetSizes.bottomNavIconsSize,
              ),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: WidgetSizes.bottomNavIconsSize,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: WidgetSizes.bottomNavIconsSize,
            ),
            label: ''),
      ],
      onTap: (currentIndex) {
        setState(() {
          globalCurrentIndex = currentIndex;
        });
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    color: MyAppColors.red,
                  ),
                  suffixIcon: Icon(Icons.mic_none),
                ),
              ),
            ),
            HomeBody(),
          ],
        ),
      ),
      // child:
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfileHeader();
  }
}

class AddReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AddReview();
  }
}
