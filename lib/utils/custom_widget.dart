import 'package:flutter/material.dart';

import 'app_sizes.dart';
import 'colors.dart';
import 'style/button_style.dart';
import 'style/text_style.dart';

class CustomWidget{
  Widget screenDividerWithText({required BuildContext context, required String text, double length= 3.5}) {
    var size = AppSizes(context: context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _whiteSpace(size, length),
        Text(text, style: TextWidgetStyle().textStyle(),),
        _whiteSpace(size, length)
      ],
    );
  }

  _whiteSpace(AppSizes size, double dividedBy) => Container(
    color: textColor,
    height: 1.0,
    width: size.getWidth/dividedBy,
  );

  iconButton({required IconData icon}) => Expanded(
    child: ElevatedButton(
      onPressed: (){},
      style: AuthBtnStyle().authBtnStyle(vPadding: 5),
      child: Icon(icon, size: 45,color: Colors.blue,)
    ),
  );
}