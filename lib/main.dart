import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Event App',
      home: Scaffold(),
      debugShowCheckedModeBanner: false,
    );
  }
}
