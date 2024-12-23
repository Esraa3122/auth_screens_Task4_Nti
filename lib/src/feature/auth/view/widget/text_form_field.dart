import 'package:auth_screens/src/core/style/size_app.dart';
import 'package:auth_screens/src/core/widget/border_text_field.dart';
import 'package:auth_screens/src/feature/auth/model/model_auth.dart';
import 'package:flutter/material.dart';

class TextFormFildAuth extends StatelessWidget {
  const TextFormFildAuth(
      {super.key,
      required this.authModle,});

  final AuthModle authModle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: authModle.validator,
        controller: authModle.controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          label: Text(authModle.lable,style: const TextStyle(fontSize: SizeApp.s15),),
          hintText: authModle.hint,
          prefixIcon: Icon(authModle.prefix),
          suffix: InkWell(
              onTap: () {
                authModle.controller.clear();
              },
              child: const Icon(
                Icons.highlight_remove,
                color: Colors.red,
              )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: borderTextField(color: Colors.white, radius: 0),
          focusedBorder: borderTextField(color: Colors.green, radius: 15),
          errorBorder: borderTextField(color: Colors.red, radius: 15),
        ),
      ),
    );
  }
}