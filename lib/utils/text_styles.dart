import 'package:flutter/material.dart';

class TextStyles {
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
