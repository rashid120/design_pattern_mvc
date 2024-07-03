import 'package:design_pattern_mvc/utils/app_sizes.dart';
import 'package:design_pattern_mvc/utils/colors.dart';
import 'package:design_pattern_mvc/utils/style/screen_style.dart';
import 'package:design_pattern_mvc/utils/style/text_style.dart';
import 'package:design_pattern_mvc/view/screens/login_screen.dart';
import 'package:design_pattern_mvc/view/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../auth_screen_widget/auth_button_screen.dart';

class AuthHomeScreen extends StatelessWidget {
  const AuthHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = AppSizes(context: context);
    var textStyle = TextWidgetStyle();
    return ScreenStyle().defaultScreen(
        context: context,
        children: [
          Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
            Image.network('https://pngimg.com/uploads/infinity_symbol/infinity_symblo_PNG48.png', width: size.getWidth / 3,),
            size.verticalSpace(),
            Text('PixelPro Digital', style: textStyle.textStyle(fonWeight: FontWeight.bold, fontSize: 16),),
            size.verticalSpace(height: 40),
            AuthBtnScreen().authBtn(text: 'Login', onPress: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const LoginScreen()));
            }),
            size.verticalSpace(height: 10),
            AuthBtnScreen().authBtn(text: 'Sign Up', onPress: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignUpScreen()));
            },color: Colors.white, bgColor: whiteBtnTextColor.withOpacity(0.0)),

          ],)),
          Text('Continue as a guest!', style: TextWidgetStyle().textStyle(),)
        ]
    );
  }
}
