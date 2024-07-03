
import 'package:design_pattern_mvc/utils/app_sizes.dart';
import 'package:design_pattern_mvc/utils/colors.dart';
import 'package:design_pattern_mvc/utils/custom_widget.dart';
import 'package:design_pattern_mvc/utils/style/button_style.dart';
import 'package:design_pattern_mvc/utils/style/text_style.dart';
import 'package:flutter/material.dart';

class AuthBtnScreen{

  authBtn({required String text, required void Function() onPress, Color color=blackBtnTextColor, bgColor=buttonBgColor, })
  => SizedBox(
    width: double.infinity,
    child: ElevatedButton(
        onPressed: onPress,
        style: AuthBtnStyle().authBtnStyle(bgColor: bgColor),
        child: Text(text, style: TextWidgetStyle().textStyle(color: color, fonWeight: fontBold),),
    ),
  );

  authGoogleFbBtn(BuildContext context) {
    var size = AppSizes(context: context);
    var customWidget = CustomWidget();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customWidget.iconButton(icon: Icons.g_mobiledata),
        size.horizontalSpace(),
        customWidget.iconButton(icon: Icons.facebook),
      ],
    );
  }

}