import 'package:flutter/material.dart';

class SmoothButton extends StatelessWidget {

  SmoothButton({super.key, });
  
  bool isButtonPressed = false;
  void buttonPressed() {
    if (isButtonPressed == false) {
      isButtonPressed = true;
    }else if (isButtonPressed == true) {
      isButtonPressed = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
