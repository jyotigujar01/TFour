import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/WebPages/Values/colours.dart';
import 'package:project_1/WebPages/Values/dimens.dart';
import 'package:project_1/WebPages/Values/fonts.dart';
import 'package:project_1/WebPages/Widgets/formStyle.dart';

Widget TextFieldlabelText(String label) {
  return Text(
    label,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: AppFonts.textFieldLabelFont,
      color: ColourPalette.textFieldLabelColor,
      fontSize: Dimens.textFieldLabelFontSize,
    ),
  );
}

Widget formTextField(String text, String name, TextInputType textInputType, String s) {
  return TextFormField(
    textAlign: TextAlign.start,
    decoration: InputDecoration(
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      //hintText: "Select Department",
    ),
  );
}

Widget pageHeadingText(String text) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Inter',
      color: ColourPalette.pageHandlingColor,
      fontSize: Dimens.pageHeadingSize
    ),
  );
}

Widget signUpheadingText(String text) {
  return Text(
    text,
    style: SignInPagesHeading(),
  );
}