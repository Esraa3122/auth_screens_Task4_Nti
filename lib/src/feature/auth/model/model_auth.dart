import 'package:flutter/material.dart';

class AuthModle {
  final TextEditingController controller;
  final String lable;
  final String hint;
  final IconData prefix;
  final String? Function(String?)? validator;
  AuthModle({required this.controller, required this.lable, required this.hint, required this.prefix, required this.validator});
}

