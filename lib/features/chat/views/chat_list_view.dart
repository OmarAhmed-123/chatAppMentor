import 'package:flutter/material.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dummy data for chat list
    final List<Map<String, String>> chats = [
      {
        'name': 'Omar Ahemd',
        'lastMessage': '2024/9/30 04:14',
        'status': 'online'
      },
      {
        'name': 'Ismeail Ahmed',
        'lastMessage': '2024/10/1 04:14',
        'status': 'online'
      },
      {
        'name': 'Hazem Ahmed',
        'lastMessage': '2024/9/28 04:14',
        'status': 'offline'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: const Text('WhatsUp', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // TODO: Implement search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // TODO: Implement more options menu
            },
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: chats.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(Icons.person, color: Colors.grey[600]),
            ),
            title: Text(
              chats[index]['name']!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(chats[index]['lastMessage']!),
            trailing: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: chats[index]['status'] == 'online'
                    ? Colors.green
                    : Colors.transparent,
              ),
            ),
            onTap: () {
              // TODO: Navigate to individual chat screen
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement new chat functionality
        },
        backgroundColor: Colors.green[700],
        child: const Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}
