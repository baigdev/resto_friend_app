import 'package:flutter/material.dart';
import 'package:resto_friends_app/utils/colors.dart';

class PostDetailsDirWidget extends StatefulWidget {
  PostDetailsDirWidget({this.text, this.iconData, this.ratingNum, this.index});
  final String text;
  final IconData iconData;
  final List ratingNum;
  final int index;

  @override
  _PostDetailsDirWidgetState createState() => _PostDetailsDirWidgetState();
}

class _PostDetailsDirWidgetState extends State<PostDetailsDirWidget> {
  changeRating() {
    setState(() {
      if (widget.ratingNum[widget.index].flag == false) {
        widget.ratingNum[widget.index].flag = true;
      } else if (widget.ratingNum[widget.index].flag) {
        widget.ratingNum[widget.index].flag = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
          color: widget.ratingNum[widget.index].flag == true
              ? MyColors.red
              : MyColors.white),
      child: TextButton(
        onPressed: () {
          setState(() {
            changeRating();
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                  color: widget.ratingNum[widget.index].flag == true
                      ? MyColors.white
                      : MyColors.red),
            ),
            Icon(
              widget.iconData,
              color: widget.ratingNum[widget.index].flag == true
                  ? MyColors.white
                  : MyColors.red,
              size: 10,
            ),
          ],
        ),
      ),
    );
  }
}
