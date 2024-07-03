import 'package:design_pattern_mvc/utils/colors.dart';
import 'package:flutter/material.dart';

class AuthBtnStyle{

  authBtnStyle({bgColor = buttonBgColor, double vPadding = 15}) => ElevatedButton.styleFrom(
    backgroundColor: bgColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),side: BorderSide(width: 1,color: whiteBtnTextColor.withOpacity(0.6))),
    padding: EdgeInsets.symmetric(vertical: vPadding),
  );
}