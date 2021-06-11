import 'dart:ui';

import 'package:flutter/material.dart';

class MyAppColors {
  static final Color grey400 = Colors.grey.shade400;
  static final Color grey300 = Colors.grey.shade300;
  static final Color pinkLight = Color(0xffFFE9EC);
  static final Color red = Color(0xffFC3E3D);
  static final Color white = Colors.white;
  static final Color indigo = Colors.indigo;
}

class WidgetSizes {
  static final double bottomNavIconsSize = 30;
  static final double boldTextSize = 15;
  static final double lightTextSize = 12;
}

class TextFonts {
  static TextStyle montserratBlack(
      {@required Color color, @required double fontSize}) {
    //Montserrat Regular has font weight 400
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w900);
  }

  static TextStyle montserratBlackItalic(
      {@required Color color, @required double fontSize}) {
    //Montserrat Regular has font weight 400
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.italic);
  }

  static TextStyle montserratBold(
      {@required Color color, @required double fontSize}) {
    //Montserrat Regular has font weight 400
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700);
  }

  static TextStyle montserratBoldItalic(
      {@required Color color, @required double fontSize}) {
    //Montserrat Regular has font weight 400
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic);
  }

  static TextStyle montserratExtraBold(
      {@required Color color, @required double fontSize}) {
    //Montserrat Regular has font weight 400
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle montserratExtraBoldItalic(
      {@required Color color, @required double fontSize}) {
    //Montserrat Regular has font weight 400
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w800,
        fontStyle: FontStyle.italic);
  }

  static TextStyle montserratExtraLight(
      {@required Color color, @required double fontSize}) {
    //Montserrat Regular has font weight 400
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w200,
    );
  }

  static TextStyle montserratExtraLightItalic(
      {@required Color color, @required double fontSize}) {
    //Montserrat Regular has font weight 400
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w200,
        fontStyle: FontStyle.italic);
  }

  static TextStyle montserratRegular(
      {@required Color color, @required double fontSize}) {
    //Montserrat Regular has font weight 400
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }
}

class Buttons {
  static Container appButton(String text) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: MyAppColors.red,
              blurRadius: 25,
              offset: Offset(0, 40),
              spreadRadius: -17
              // spreadRadius: ,
              ),
        ],
        color: MyAppColors.red,
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(10), right: Radius.circular(10)),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextFonts.montserratBold(
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
        border: Border.all(width: 1.5, color: MyAppColors.red),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(color: MyAppColors.red),
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
        border: Border.all(width: 1.5, color: MyAppColors.red),
      ),
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: MyAppColors.red),
            ),
            Icon(
              iconData,
              color: MyAppColors.red,
              size: 10,
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
