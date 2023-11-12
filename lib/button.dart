import 'package:flutter/material.dart';

class SmoothButton extends StatefulWidget {
  bool isButtonPressed;
  Color activeIconColor;
  Color pasifeIconColor;

  SmoothButton({
    super.key,
    this.isButtonPressed = false,
    this.activeIconColor = Colors.green,
    this.pasifeIconColor = Colors.red,
  });

  @override
  State<SmoothButton> createState() => _SmoothButtonState();
}

class _SmoothButtonState extends State<SmoothButton> {
  void buttonPressed() {
    setState(() {
      widget.isButtonPressed = !widget.isButtonPressed;
    });
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
          ],
        ),
        child: Icon(
          Icons.favorite,
          size: 60,
          color: widget.isButtonPressed
              ? widget.activeIconColor
              : widget.pasifeIconColor,
        ),
      ),
    );
  }
}
