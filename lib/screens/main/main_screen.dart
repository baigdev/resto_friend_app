import 'package:flutter/material.dart';
import 'package:resto_friends_app/utils/const.dart';
import 'package:resto_friends_app/screens/profile/profile_screen.dart';
import 'package:resto_friends_app/screens/home/home_screen.dart';
import 'package:resto_friends_app/utils/colors.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int globalCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: makeBottomNavBar(),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    if (globalCurrentIndex == 0)
      return home(context);
    else if (globalCurrentIndex == 3) return ProfileScreen();
    return null;
  }

  BottomNavigationBar makeBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: globalCurrentIndex,
      // backgroundColor: Colors.green,
      selectedItemColor: MyColors.red,
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
              backgroundColor: MyColors.red,
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
