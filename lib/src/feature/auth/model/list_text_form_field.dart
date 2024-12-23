import 'package:auth_screens/src/core/style/string_app.dart';
import 'package:auth_screens/src/feature/auth/model/model_auth.dart';
import 'package:auth_screens/src/feature/auth/view/screen/login_screen.dart';
import 'package:auth_screens/src/feature/auth/view/screen/register_screen.dart';
import 'package:flutter/material.dart';


List<AuthModle> list1 = [
  AuthModle(
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
              AuthModle(
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

];
List<AuthModle> list2 = [
  AuthModle(
      validator: (value) {
          if (value!.isEmpty) {
              return StringApp.pEYN;
          }
          return null;
      },
      controller: nameController,
      lable: StringApp.nameInputLabel,
      hint: StringApp.eYN,
      prefix: Icons.person,
  ),
              AuthModle(
                validator: (value) {
                  if (value!.isEmpty) {
                    return StringApp.pEYPN;
                  }
                  if (value.length < 11) {
                    return StringApp.phoneError;
                  }
                  return null;
                },
                controller: phoneNumberController,
                lable: StringApp.phoneNumberInputLabel,
                hint: StringApp.eYPN,
                prefix: Icons.phone,
              ),
              AuthModle(
                validator: (value) {
                  if (value!.isEmpty) {
                    return StringApp.pEYNID;
                  }
                  if (value.length < 14) {
                    return StringApp.nationalIDError;
                  }
                  return null;
                },
                controller: nationalIDController,
                lable: StringApp.nationalIdInputLabel,
                hint: StringApp.eYNID,
                prefix: Icons.perm_contact_cal_outlined,
              ),
              AuthModle(
                validator: (value) {
                  if (value!.isEmpty) {
                    return StringApp.pEYEA;
                  }
                  return null;
                },
                controller: emailRController,
                lable: StringApp.emailInputLabel,
                hint: StringApp.eYEA,
                prefix: Icons.email,
              ),
              AuthModle(
                validator: (value) {
                  if (value!.isEmpty) {
                    return StringApp.pEYP;
                  }
                  if (value.length < 6) {
                    return StringApp.passwordLengthError;
                  }
                  return null;
                },
                controller: passwordRController,
                lable: StringApp.passwordInputLabel,
                hint: StringApp.eYP,
                prefix: Icons.password,
              ),
              AuthModle(
                validator: (value) {
                  if (value!.isEmpty) {
                    return StringApp.pEYP;
                  }
                  if (value.length < 6) {
                    return StringApp.passwordLengthError;
                  }
                  return null;
                },
                controller: passwordRController,
                lable: StringApp.confirmPasswordInputLabel,
                hint: StringApp.eYP,
                prefix: Icons.vpn_key_outlined,
              ),
];