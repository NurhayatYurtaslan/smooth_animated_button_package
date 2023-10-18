import 'package:flutter/material.dart';

class SmoothButton extends StatefulWidget {
  final void Function()? onTap;
  SmoothButton({super.key, this.onTap});

  @override
  State<SmoothButton> createState() => _SmoothButtonState();
}

class _SmoothButtonState extends State<SmoothButton> {
  bool isButtonPressed = false; 

  void buttonPressed (){}

  @override
  
  Widget build(BuildContext context) {
    return 
      GestureDetector(
        onTap: buttonPressed,
        child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 63, 7, 132),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 52, 167, 14),
                    offset: Offset(6, 6),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ), // BoxShadow
          // lighter shadow on top left
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-6, -6),
                    blurRadius: 15,
                    spreadRadius: 1,
          // BoxShadow
                  ),
                ]),
            child: const Icon(
              Icons.favorite,
              size: 60,
              color: Colors.red,
            ),
          ),
      );
  }
}
