import 'package:design_pattern_mvc/utils/app_sizes.dart';
import 'package:design_pattern_mvc/utils/colors.dart';
import 'package:design_pattern_mvc/utils/custom_widget.dart';
import 'package:design_pattern_mvc/utils/style/screen_style.dart';
import 'package:design_pattern_mvc/utils/style/text_style.dart';
import 'package:flutter/material.dart';

import '../auth_screen_widget/auth_button_screen.dart';
import '../auth_screen_widget/auth_textfield_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var textStyle = TextWidgetStyle();
    var size = AppSizes(context: context);
    var textField = AuthTextfieldScreen();
    var buttons = AuthBtnScreen();
    return ScreenStyle().defaultScreen(
        context: context,
        children: [
          Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [

            Text('Welcome,', style: textStyle.textStyle(fonWeight: fontBold, fontSize: headingFontSize),),
            Text('Glad to see you!', style: textStyle.textStyle(fontSize: headingFontSize),),
            size.verticalSpace(height: 20),
            textField.authTextField(controller: TextEditingController(), hint: 'Email Address'),
            size.verticalSpace(),
            textField.authTextField(controller: TextEditingController(), hint: 'Password',suffixIcon: const Icon(Icons.visibility)),
            Align(alignment: Alignment.topRight,child: TextButton(onPressed: (){}, child: Text('Forgot Password?', style: textStyle.textStyle(fonWeight: fontBold),))),
            size.verticalSpace(),
            buttons.authBtn(text: 'Login', onPress: (){}),
            size.verticalSpace(height: size.getHeight/13),
            CustomWidget().screenDividerWithText(context: context, text: 'Or Login with'),
            size.verticalSpace(height: 20),
            buttons.authGoogleFbBtn(context)
          ],)),

          RichText(text: TextSpan(
            children: [
              TextSpan(text: "Don't have an account? ", style: textStyle.textStyle(color: textBlackColor,fontSize: 16)),
              const TextSpan(text: "Sign Up Now", style: TextStyle(decoration: TextDecoration.underline, fontSize: 16)),
            ]
          )),
        ]
    );
  }
}
