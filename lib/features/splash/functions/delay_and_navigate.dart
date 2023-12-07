import 'package:flutter/material.dart';
import 'package:holla/features/auth/choice%20between%20registration%20and%20login/views/choice_between_registration_and_login_view.dart';

void delayAndNavigate(BuildContext context) {
  Future.delayed(const Duration(seconds: 4)).then((value) {
    Navigator.pushReplacementNamed(
        context, ChoiceBetweenRegistrationAndLogin.id);
  });
}
