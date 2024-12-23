import 'package:auth_screens/src/core/style/color_app.dart';
import 'package:auth_screens/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class CustomButtomAuth extends StatelessWidget {
  final void Function()? onPressed;
  final String text;

  const CustomButtomAuth({
    super.key,
    required this.text, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        elevation: 5,
        splashColor: const Color.fromARGB(134, 255, 255, 255),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        onPressed: () {
          onPressed?.call();
        },
        color: ColorApp.appColor,
        child: Text(text, style: TextStyle(fontSize: SizeApp.s16, color: ColorApp.backgroundcolor),),
      ),
    );
  }
}