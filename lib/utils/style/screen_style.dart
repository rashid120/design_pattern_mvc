import 'package:flutter/material.dart';
import '../app_sizes.dart';
import '../colors.dart';

class ScreenStyle {

  appScreenPadding() => const EdgeInsets.symmetric(horizontal: 20, vertical: 30);

  Widget defaultScreen({required BuildContext context, required List<Widget> children}){
    var size = AppSizes(context: context);
    return Scaffold(
        body: Container(
          padding: appScreenPadding(),
          height: size.getHeight,
          width: size.getWidth,
          decoration: BoxDecoration(gradient: appGradientColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
        )
    );
  }

}