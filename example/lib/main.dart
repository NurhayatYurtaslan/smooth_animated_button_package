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
        backgroundColor: Colors.grey,
        body: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothButton(
                  activeIconColor: Colors.red,
                  duration: const Duration(milliseconds: 300),
                  icon: Icons.favorite,
                  // Use MediaQuery or Int Value
                  buttonheight: MediaQuery.of(context).size.height * 0.2,
                  // Use MediaQuery or Int Value
                  buttonwidth: 300,
                  borderRadius: 20, iconSize: 60,
                  text: "Smooth Button",
                  textStyle: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SmoothButton(
                  pasifeIconColor: Colors.green,
                  activeIconColor: Colors.black,
                  duration: const Duration(milliseconds: 500),
                  icon: Icons.add_alert,
                  // Use MediaQuery or Int Value
                  buttonheight: MediaQuery.of(context).size.height * 0.4,
                  // Use MediaQuery or Int Value
                  buttonwidth: 100,
                  borderRadius: 20, iconSize: 60,
                ),
              ]),
        ),
      ),
    );
  }
}
