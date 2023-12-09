import 'package:flutter/material.dart';
import 'package:holla/features/auth/choice%20between%20registration%20and%20login/views/choice_between_registration_and_login_view.dart';
import 'package:holla/features/auth/login/views/login_view.dart';
import 'package:holla/features/auth/choice%20between%20registration%20and%20login/views/privacy_terms_view.dart';
import 'package:holla/features/auth/choice%20between%20registration%20and%20login/views/user_agreement_view.dart';
import 'package:holla/features/auth/login/views/password_recovery.dart';
import 'package:holla/features/games/views/games_view.dart';
import 'package:holla/features/home/views/all_rooms_view.dart';
import 'package:holla/features/home/views/home_view.dart';
import 'package:holla/features/messages/views/messages_view.dart';
import 'package:holla/features/profile/views/profile_view.dart';
import 'package:holla/features/splash/views/splash_view.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  SplashView.id: (context) => const SplashView(),
  ChoiceBetweenRegistrationAndLogin.id: (context) =>
      const ChoiceBetweenRegistrationAndLogin(),
  UserAgreementView.id: (context) => const UserAgreementView(),
  PrivacyTermsView.id: (context) => const PrivacyTermsView(),
  LoginView.id: (context) => const LoginView(),
  PasswordRecoveryView.id: (context) => const PasswordRecoveryView(),
  HomeView.id: (context) => const HomeView(),
  MessagesView.id: (context) => const MessagesView(),
  ProfileView.id: (context) => const ProfileView(),
  GamesView.id: (context) => const GamesView(),
  AllRoomsView.id: (context) => const AllRoomsView(),
};
