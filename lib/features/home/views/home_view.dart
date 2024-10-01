// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:chatapp/core/routes/app_route.dart';
import 'package:chatapp/features/chat/views/chat_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatListView()),
                );
              },
              child: const Text('Start Chatting'),
            ),
          ],
        ),
      ),
    );
  }
}
