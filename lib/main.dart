// ignore_for_file: depend_on_referenced_packages

import 'package:chatapp/core/routes/app_route.dart';
import 'package:chatapp/features/auth/views/login_vew.dart';
import 'package:chatapp/features/auth/views/signup_view.dart';
import 'package:chatapp/features/home/views/home_view.dart';
import 'package:flutter/material.dart';

/*import 'package:chat_app/core/routes/app_routes.dart';
import 'package:chat_app/features/home/views/home_view.dart';
import 'package:chat_app/features/auth/views/login_view.dart';
import 'package:chat_app/features/auth/views/signup_view.dart';
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (context) => const LoginView(),
        AppRoutes.signup: (context) => const SignupView(),
        AppRoutes.home: (context) => const HomeView(),
      },
    );
  }
}
