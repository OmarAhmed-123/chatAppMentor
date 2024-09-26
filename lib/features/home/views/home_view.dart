// ignore_for_file: depend_on_referenced_packages

import 'package:chatapp/core/routes/app_route.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_chat_nectar/core/routes/app_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.login);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Home Page!'),
            const SizedBox(height: 16),
            const Text('This is the home page of your chat app.'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Start Chatting'),
            ),
          ],
        ),
      ),
    );
  }
}
