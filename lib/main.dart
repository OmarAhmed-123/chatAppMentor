// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:chatapp/core/routes/app_route.dart';
import 'package:chatapp/features/auth/views/login_vew.dart';
import 'package:chatapp/features/auth/views/signup_view.dart';
import 'package:chatapp/features/home/views/home_view.dart';
import 'package:chatapp/features/splash/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsUp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF25D366), // WhatsApp green color
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(0xFF25D366),
          elevation: 0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF128C7E), // WhatsApp dark green
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.login: (context) => const LoginView(),
        AppRoutes.signup: (context) => const SignupView(),
        AppRoutes.home: (context) => const HomeView(),
      },
    );
  }
}
