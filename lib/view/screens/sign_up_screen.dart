import 'package:design_pattern_mvc/utils/colors.dart';
import 'package:design_pattern_mvc/utils/custom_widget.dart';
import 'package:design_pattern_mvc/utils/style/screen_style.dart';
import 'package:flutter/material.dart';

import '../../utils/app_sizes.dart';
import '../../utils/style/text_style.dart';
import '../auth_screen_widget/auth_button_screen.dart';
import '../auth_screen_widget/auth_textfield_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textStyle = TextWidgetStyle();
    var size = AppSizes(context: context);
    var textField = AuthTextfieldScreen();
    var buttons = AuthBtnScreen();
    return ScreenStyle().defaultScreen(
        context: context,
        children: [
          Expanded(child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
              Text('Create Account', style: textStyle.textStyle(fontSize: headingFontSize, fonWeight: fontBold),),
              Text('to get started now!', style: textStyle.textStyle(fontSize: headingFontSize),),
              size.verticalSpace(height: 20),
              textField.authTextField(controller: TextEditingController(), hint: 'Email Address'),
              size.verticalSpace(),
              textField.authTextField(controller: TextEditingController(), hint: 'Password'),
              size.verticalSpace(),
              textField.authTextField(controller: TextEditingController(), hint: 'Confirm Password'),
              size.verticalSpace(height: 20),
              buttons.authBtn(text: 'Sign Up', onPress: (){}),
              size.verticalSpace(height: size.getHeight/13),
              CustomWidget().screenDividerWithText(context: context, text: 'Or Sign Up with', length: 3.7),
              size.verticalSpace(height: 20),
              buttons.authGoogleFbBtn(context)
            ],),
          )),

          RichText(text: TextSpan(
              children: [
                TextSpan(text: "Already have an account? ", style: textStyle.textStyle(color: textBlackColor,fontSize: 16)),
                const TextSpan(text: "Login Now", style: TextStyle(decoration: TextDecoration.underline, fontSize: 16)),
              ]
          )),
        ]
    );
  }
}
