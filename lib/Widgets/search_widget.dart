import 'package:flutter/material.dart';
import 'package:resto_friends_app/utils/colors.dart';

Widget searchBar() {
  return Padding(
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
  );
}
