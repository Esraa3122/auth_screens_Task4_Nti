import 'package:auth_screens/src/core/style/color_app.dart';
import 'package:auth_screens/src/core/style/string_app.dart';
import 'package:auth_screens/src/core/style/text_style.dart';
import 'package:auth_screens/src/core/widget/app_bar.dart';
import 'package:auth_screens/src/feature/auth/view/screen/register_screen.dart';
import 'package:auth_screens/src/feature/auth/view/widget/custom_button_auth.dart';
import 'package:auth_screens/src/feature/auth/view/widget/custom_text_from_auth.dart';
import 'package:auth_screens/src/feature/auth/view/widget/login_form.dart';
import 'package:auth_screens/src/feature/auth/view/widget/login_w_social.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

GlobalKey<FormState> fornKey = GlobalKey();

class _LoginState extends State<Login> {

   @override
  void dispose() {
    //TODO: implement dispose
    super.dispose();
    emailRController.dispose();
    passwordRController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      // backgroundColor: ColorApp.backgroundcolor,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: ListView(
          children: [
            const CustomTextFormAuth(text: StringApp.logInTitle),
            const SizedBox(
              height: 50,
            ),
            const FormLogin(),
            const SizedBox(
              height: 70,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(StringApp.forgotPasswordTitle,
                    style: authSubTextStyle()),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_right_alt,
                    color: ColorApp.appColor,
                    size: 30,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtomAuth(
              text: StringApp.signInButtonText,
              onPressed: () {
                if (fornKey.currentState!.validate()) ;
              },
            ),
            const SizedBox(
              height: 140,
            ),
            Text(
              StringApp.signInWSocial,
              textAlign: TextAlign.center,
              style: authSubTextStyle(),
            ),
            const SizedBox(
              height: 20,
            ),
            const LoginWSocial(),
          ],
        ),
      ),
    );
  }
}
