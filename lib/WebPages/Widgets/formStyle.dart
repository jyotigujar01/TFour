import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_1/WebPages/Values/colours.dart';
import 'package:project_1/WebPages/Values/dimens.dart';
import 'package:project_1/WebPages/Values/fonts.dart';

TextStyle pageHeadingStyle() {
  return TextStyle(
    fontFamily: AppFonts.pageHeadingFont,
    color: ColourPalette.pageHandlingColor,
    fontSize: Dimens.pageHeadingSize
  );
}

TextStyle headingStyle() {
  return TextStyle(
    fontFamily: AppFonts.pageHeadingFont,
    color: ColourPalette.textFieldLabelColor,
    fontSize: Dimens.headingSize,
  );
}

TextStyle buttonTextStyle() {
  return TextStyle(
    fontFamily: AppFonts.pageHeadingFont,
    fontSize: Dimens.buttonTextSize
  );
}

TextStyle SignInPagesHeading() {
  return TextStyle(
    fontFamily: AppFonts.pageHeadingFont,
    fontSize: Dimens.signupPageHeading
  );
}

TextStyle normalText() {
  return TextStyle(
    fontFamily: "MontserratRegular",
    color: Color(0xFF3D475C),
    fontSize: 12
  );
}

TextStyle Tableheading() {
  return TextStyle(
    fontFamily: AppFonts.pageHeadingFont,
    color: Colors.black,
    fontSize: Dimens.textFieldLabelFontSize,
    fontWeight: FontWeight.w100
  );
}