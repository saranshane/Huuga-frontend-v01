import 'package:get/get.dart';

class ChatController extends GetxController {
  // Example properties and methods
  var _messages = <String>[].obs;

  List<String> get messages => _messages;

  void addMessage(String message) {
    _messages.add(message);
    update(); // Update the UI when a message is added
  }
}
