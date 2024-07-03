import 'package:design_pattern_mvc/utils/app_sizes.dart';
import 'package:design_pattern_mvc/utils/colors.dart';
import 'package:flutter/material.dart';

const fontBold = FontWeight.bold;

class TextWidgetStyle{

  textStyle({double fontSize=normalFontSize, fonWeight = FontWeight.normal, color=textColor}) => TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fonWeight
  );
}