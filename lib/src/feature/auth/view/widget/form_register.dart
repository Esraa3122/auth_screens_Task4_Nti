import 'package:auth_screens/src/feature/auth/model/list_text_form_field.dart';
import 'package:auth_screens/src/feature/auth/view/screen/register_screen.dart';
import 'package:auth_screens/src/feature/auth/view/widget/text_form_field.dart';
import 'package:flutter/material.dart';

class FormRegister extends StatelessWidget {
  const FormRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child:  SizedBox(
        height: 500,
        child: ListView.builder(
                      itemCount: list2.length,
                      itemBuilder: (context, index) {
                        return TextFormFildAuth(authModle: list2[index],);
                      }),
      ),);
  }
}