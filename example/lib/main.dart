import 'package:flutter/material.dart';
import 'package:smooth_animated_button_press/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
            child: SmoothButton(
          
        )),
      ),
    );
  }
}
