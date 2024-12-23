import 'package:auth_screens/src/core/style/color_app.dart';
import 'package:auth_screens/src/core/style/string_app.dart';
import 'package:auth_screens/src/core/style/text_style.dart';
import 'package:auth_screens/src/core/widget/app_bar.dart';
import 'package:auth_screens/src/feature/auth/view/screen/login_screen.dart';
import 'package:auth_screens/src/feature/auth/view/widget/custom_button_auth.dart';
import 'package:auth_screens/src/feature/auth/view/widget/custom_text_from_auth.dart';
import 'package:auth_screens/src/feature/auth/view/widget/form_register.dart';
import 'package:auth_screens/src/feature/auth/view/widget/login_w_social.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _LoginState();
}

final TextEditingController nameController = TextEditingController();
final TextEditingController nationalIDController = TextEditingController();
final TextEditingController phoneNumberController = TextEditingController();
final TextEditingController emailRController = TextEditingController();
final TextEditingController passwordRController = TextEditingController();

GlobalKey<FormState> formKey = GlobalKey();

class _LoginState extends State<RegisterScreen> {

  @override
  void dispose() {
    //TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nationalIDController.dispose();
    nameController.dispose();
    phoneNumberController.dispose();
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
            const CustomTextFormAuth(text: StringApp.signUpTitle),
            const FormRegister(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(StringApp.alreadyHaveAnAccount,
                    style: authSubTextStyle()),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Login();
                    }));
                  },
                  icon: Icon(
                    Icons.arrow_right_alt,
                    color: ColorApp.appColor,
                    size: 30,
                  ),
                )
              ],
            ),
            CustomButtomAuth(
              text: StringApp.registerButtonText,
              onPressed: () {
                if (formKey.currentState!.validate()) ;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              StringApp.signInWSocial,
              textAlign: TextAlign.center,
              style: authSubTextStyle(),
            ),
            const SizedBox(
              height: 10,
            ),
            const LoginWSocial(),
          ],
        ),
      ),
    );
  }
}
