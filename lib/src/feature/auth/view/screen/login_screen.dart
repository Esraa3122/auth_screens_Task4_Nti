import 'package:auth_screens/src/core/style/color_app.dart';
import 'package:auth_screens/src/core/style/string_app.dart';
import 'package:auth_screens/src/core/style/text_style.dart';
import 'package:auth_screens/src/core/widget/app_bar.dart';
import 'package:auth_screens/src/feature/auth/view/widget/custom_button_auth.dart';
import 'package:auth_screens/src/feature/auth/view/widget/custom_text_from_auth.dart';
import 'package:auth_screens/src/feature/auth/view/widget/login_w_social.dart';
import 'package:auth_screens/src/feature/auth/view/widget/text_form_field.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

GlobalKey<FormState> formKey = GlobalKey();

class _LoginState extends State<Login> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      // backgroundColor: ColorApp.backgroundcolor,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const CustomTextFormAuth(
                text: StringApp.logInTitle,
              ),
              const SizedBox(
                height: 70,
              ),
              TextFormFild(
                validator: (value) {
                  if (value!.isEmpty) {
                    return StringApp.pEYEA;
                  }
                  return null;
                },
                controller: emailController,
                lable: StringApp.emailInputLabel,
                hint: StringApp.eYEA,
                prefix: Icons.email,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormFild(
                validator: (value) {
                  if (value!.isEmpty) {
                    return StringApp.pEYP;
                  }
                  if (value.length < 6) {
                    return StringApp.passwordLengthError;
                  }
                  return null;
                },
                controller: passwordController,
                lable: StringApp.passwordInputLabel,
                hint: StringApp.eYP,
                prefix: Icons.password,
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
                  if (formKey.currentState!.validate()) ;
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
      ),
    );
  }
}
