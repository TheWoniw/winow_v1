import 'package:flutter/material.dart';
import 'package:winow_v1/stateful_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: stateful_page(),
    );
  }
}
