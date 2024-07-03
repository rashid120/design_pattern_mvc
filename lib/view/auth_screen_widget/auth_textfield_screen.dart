import 'package:design_pattern_mvc/utils/style/text_style.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class AuthTextfieldScreen{

  authTextField({required TextEditingController controller, required String hint, Widget? suffixIcon}){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0,),
        border: Border.all(color: textColor),
        color: buttonBgColor.withOpacity(0.4)
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextWidgetStyle().textStyle(fontSize: 16),
          suffixIcon: suffixIcon
        ),
      ),
    );
  }
}