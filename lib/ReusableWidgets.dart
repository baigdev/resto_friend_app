import 'package:flutter/material.dart';
import 'package:resto_friends_app/Constants.dart';

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
          borderRadius: BorderRadius.circular(30),
          color: MyAppColors.pinkLight),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ratings,
            style:
                TextFonts.montserratBold(color: MyAppColors.red, fontSize: 15),
          ),
          Icon(
            Icons.star,
            color: MyAppColors.red,
            size: 15,
          ),
        ],
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
        iconEnabledColor: MyAppColors.red,
        items: hotels.map((String hotelsName) {
          return DropdownMenuItem<String>(
            value: hotelsName,
            child: Text(
              hotelsName,
              style: TextFonts.montserratBold(
                  color: MyAppColors.indigo, fontSize: 15),
            ),
          );
        }).toList(),
        value: selectedItem,
        hint: Text(
          widget.hotel,
          style:
              TextFonts.montserratBold(color: MyAppColors.indigo, fontSize: 15),
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
