import 'package:flutter/material.dart';
import 'package:holla/features/auth/views/choice_between_registration_and_login_view.dart';
import 'package:holla/features/auth/views/privacy_terms_view.dart';
import 'package:holla/features/auth/views/user_agreement_view.dart';
import 'package:holla/features/splash/views/splash_view.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  SplashView.id: (context) => const SplashView(),
  ChoiceBetweenRegistrationAndLogin.id: (context) =>
      const ChoiceBetweenRegistrationAndLogin(),
  UserAgreementView.id: (context) => const UserAgreementView(),
  PrivacyTermsView.id: (context) => const PrivacyTermsView(),
};
