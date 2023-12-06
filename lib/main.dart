import 'package:flutter/material.dart';
import 'package:holla/core/Utils/app_routes.dart';
import 'package:holla/features/splash/views/splash_view.dart';

void main() {
  runApp(const HollaApp());
}

class HollaApp extends StatelessWidget {
  const HollaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: appRoutes,
      initialRoute: SplashView.id,
    );
  }
}
