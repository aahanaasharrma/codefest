import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';

class BotScreen extends StatefulWidget {
  @override
  _BotScreenState createState() => _BotScreenState();
}

class _BotScreenState extends State<BotScreen> {
  @override
  void initState() {
    super.initState();
    // Remove the automatic conversation start
  }

  void startConversation() {
    dynamic conversationObject = {
      'appId': '2c7469a943ee0982e13db0ef41a5cfd9e', // Replace with your Kommunicate App ID
    };

    KommunicateFlutterPlugin.buildConversation(conversationObject)
        .then((clientConversationId) {
      print("Conversation builder success : " + clientConversationId.toString());

      // Open the conversation when the button is pressed
      KommunicateFlutterPlugin.openConversations();
    }).catchError((error) {
      print("Conversation builder error : " + error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bot Conversation'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            startConversation();
          },
          child: Text('Open Chat'),
        ),
      ),
    );
  }
}