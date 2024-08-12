import 'package:codefest/bot.dart';
import 'package:codefest/documents.dart';
import 'package:codefest/events.dart';
import 'package:codefest/firstpage.dart';
import 'package:codefest/offer.dart';
import 'package:codefest/profile.dart';
import 'package:codefest/signup.dart';
import 'package:codefest/terms.dart';
import 'package:codefest/verification.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Page',
      home: BotScreen(),
      routes: {
        '/events': (context) => FirstPage(), // Define the named route for Events class
      },
    );
  }
}