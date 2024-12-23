import 'package:auth_screens/src/core/style/color_app.dart';
import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: ColorApp.appBarBackgroundColor,
    elevation: 0.0,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.arrow_back_ios),
    ),
  );
}
