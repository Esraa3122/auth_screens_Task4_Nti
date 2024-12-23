import 'package:auth_screens/src/feature/auth/model/list_text_form_field.dart';
import 'package:auth_screens/src/feature/auth/view/screen/login_screen.dart';
import 'package:auth_screens/src/feature/auth/view/widget/text_form_field.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fornKey,
      child:  SizedBox(
        height: 200,
        child: ListView.builder(
                      itemCount: list1.length,
                      itemBuilder: (context, index) {
                        return TextFormFildAuth(authModle: list1[index],);
                      }),
      ),);
  }
}