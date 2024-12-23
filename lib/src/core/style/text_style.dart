import 'package:auth_screens/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

TextStyle authTextStyle() {
  return const TextStyle(
    fontSize: SizeApp.s33,
    fontWeight: FontWeight.bold,
  );
}

TextStyle authSubTextStyle() {
  return const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: SizeApp.s16
  );
}
