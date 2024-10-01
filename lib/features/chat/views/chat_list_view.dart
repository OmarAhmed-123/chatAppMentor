// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dummy data for chat list
    final List<Map<String, String>> chats = [
      {'name': 'Omar Ahmed', 'lastMessage': 'Hey, how are you?'},
      {'name': 'Ismeail Ahmed', 'lastMessage': 'See you tomorrow!'},
      {'name': 'Hazem Ahmed', 'lastMessage': 'Thanks for the help!'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(chats[index]['name']![0]),
            ),
            title: Text(chats[index]['name']!),
            subtitle: Text(chats[index]['lastMessage']!),
            onTap: () {
              // TODO: Navigate to individual chat screen
            },
          );
        },
      ),
    );
  }
}
