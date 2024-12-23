import 'package:auth_screens/src/core/style/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String text;
  const CustomTextFormAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: authTextStyle());
  }
}