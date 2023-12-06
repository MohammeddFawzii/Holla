import 'package:flutter/material.dart';
import 'package:holla/features/splash/views/splash_view.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  SplashView.id: (context) => const SplashView(),
};
