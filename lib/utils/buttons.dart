import 'package:flutter/material.dart';
import 'package:resto_friends_app/utils/colors.dart';
import 'package:resto_friends_app/utils/text_styles.dart';
import 'package:resto_friends_app/utils/const.dart';

class Buttons {
  static Container appButton(String text) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: MyColors.red,
              blurRadius: 25,
              offset: Offset(0, 40),
              spreadRadius: -17
              // spreadRadius: ,
              ),
        ],
        color: MyColors.red,
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(10), right: Radius.circular(10)),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyles.montserratBold(
              color: Colors.white, fontSize: WidgetSizes.lightTextSize),
        ),
      ),
    );
  }

  static Container postDetailsDirBUtton(String text) {
    return Container(
      // height: 10,
      // width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(10),
          right: Radius.circular(10),
        ),
        border: Border.all(width: 1.5, color: MyColors.red),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(color: MyColors.red),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  static Container postDetailsRatingButton({String text, IconData iconData}) {
    return Container(
      height: 40,
      width: 40,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(10),
          right: Radius.circular(10),
        ),
        border: Border.all(width: 1.5, color: MyColors.red),
      ),
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: MyColors.red),
            ),
            Icon(
              iconData,
              color: MyColors.red,
              size: 10,
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}

class MyDropDownButton extends StatefulWidget {
  MyDropDownButton({@required this.hotel});
  final String hotel;

  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  final List<String> hotels = [];

  String selectedItem;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hotels.add(widget.hotel);
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        isExpanded: true,
        iconEnabledColor: MyColors.red,
        items: hotels.map((String hotelsName) {
          return DropdownMenuItem<String>(
            value: hotelsName,
            child: Text(
              hotelsName,
              style: TextStyles.montserratBold(
                  color: MyColors.indigo, fontSize: 15),
            ),
          );
        }).toList(),
        value: selectedItem,
        hint: Text(
          widget.hotel,
          style:
              TextStyles.montserratBold(color: MyColors.indigo, fontSize: 15),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        onChanged: (selectedValue) {
          setState(() {
            selectedItem = selectedValue;
          });
        },
      ),
    );
  }
}

class RatingContainer extends StatelessWidget {
  RatingContainer(
      {@required this.ratings, @required this.height, @required this.width});
  final String ratings;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: MyColors.pinkLight),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ratings,
            style: TextStyles.montserratBold(color: MyColors.red, fontSize: 15),
          ),
          Icon(
            Icons.star,
            color: MyColors.red,
            size: 15,
          ),
        ],
      ),
    );
  }
}
