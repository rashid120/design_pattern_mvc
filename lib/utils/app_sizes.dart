
import 'package:flutter/material.dart';

const normalFontSize = 14.0;
const headingFontSize = 25.0;

class AppSizes{

  BuildContext context;
  AppSizes({required this.context});

  double get getHeight => MediaQuery.of(context).size.height;
  double get getWidth => MediaQuery.of(context).size.width;

  Widget verticalSpace({double height=10}) => SizedBox(height: height,);
  Widget horizontalSpace({double width=10}) => SizedBox(width: width,);
}