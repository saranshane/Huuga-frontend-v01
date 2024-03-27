import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/chat_controller.dart';

class ChatScreen extends StatelessWidget {
  final ChatController _chatController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _chatController.addMessage('Hello, How Are you?....');
              },
              child: Text('Send Message'),
            ),
            Obx(
                  () => Column(
                children: _chatController.messages
                    .map(
                      (message) => ListTile(
                    title: Text(message),
                  ),
                )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
