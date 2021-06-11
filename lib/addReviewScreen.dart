import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resto_friends_app/PostDetailReusableWidgets.dart';
import 'package:resto_friends_app/ReusableWidgets.dart';
import 'package:resto_friends_app/Constants.dart';

class AddReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> tagsList = [
      'bread',
      'fish',
      'rice',
      'paratha',
      'bbq',
    ];
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: MyAppColors.grey400,
          ),
        ),
        elevation: 0,
        backgroundColor: MyAppColors.white,
      ),
      body: Container(
        color: MyAppColors.white,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Give your rating',
                    style: TextFonts.montserratBold(
                        color: MyAppColors.indigo, fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Buttons.postDetailsRatingButton(
                          text: '1', iconData: Icons.star),
                      Buttons.postDetailsRatingButton(
                          text: '2', iconData: Icons.star),
                      Buttons.postDetailsRatingButton(
                          text: '3', iconData: Icons.star),
                      Buttons.postDetailsRatingButton(
                          text: '4', iconData: Icons.star),
                      Buttons.postDetailsRatingButton(
                          text: '5', iconData: Icons.star),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Outstanding',
                    style: TextFonts.montserratBold(
                        color: MyAppColors.red, fontSize: 12),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Give more information to your friends about the environment, the food...',
                    style: TextFonts.montserratBold(
                        color: MyAppColors.indigo, fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Container(
                          alignment: Alignment.bottomLeft,
                          height: 110,
                          width: 80,
                          child: Text(
                            '(160) max',
                            style: TextFonts.montserratBold(
                                color: MyAppColors.grey400, fontSize: 12),
                          )),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    child: PostDetailRestoImagsWidget()),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: MyAppColors.pinkLight),
                      child: Icon(
                        Icons.photo,
                        color: MyAppColors.red,
                        size: 20,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text(
                        'Add More Photos',
                        style: TextFonts.montserratBold(
                            color: MyAppColors.grey400, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 1,
                  color: MyAppColors.grey300,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.red,
                      margin: EdgeInsets.all(20),
                      child: Text(
                        'Add tag to make search easier',
                        style: TextFonts.montserratBold(
                            color: MyAppColors.indigo, fontSize: 15),
                      ),
                    ),
                    Container(
                      width: size.width,
                      height: 35,
                      // color: Colors.black,
                      margin: EdgeInsets.all(20),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: tagsList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              // color: Colors.indigo,
                              margin: EdgeInsets.only(right: 10),
                              child:
                                  Buttons.postDetailsDirBUtton(tagsList[index]),
                            );
                          }),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  color: MyAppColors.grey300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.all(20),
                          height: 50,
                          child: Buttons.appButton('Add Your Review')),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
