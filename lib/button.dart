import 'package:flutter/material.dart';

class SmoothButton extends StatefulWidget {
  bool isButtonPressed;
  Color activeIconColor;
  Color pasifeIconColor;
  Color noShadowColor;
  Color shadowColor;
  Color activeButtonColor;
  Color pasifeButtonColor;
  double buttonheight;
  double buttonwidth;
  IconData icon;
  Duration duration;
  double borderRadius; // circuler borderRadius
  Offset bottomOffset; // bottom shadow ofset
  Offset topOffset;
  double iconSize;
  double blurRadius;
  double spreadRadius;
  String text; // Added parameter for text
  TextStyle textStyle;

  SmoothButton({
    super.key,
    this.isButtonPressed = false,
    this.activeIconColor = Colors.redAccent,
    this.pasifeIconColor = Colors.red,
    this.noShadowColor = Colors.grey,
    this.shadowColor = Colors.white,
    this.activeButtonColor = Colors.white,
    this.pasifeButtonColor = Colors.grey,
    this.borderRadius = 12,
    this.bottomOffset = const Offset(6, 6),
    this.topOffset = const Offset(-6, -6),
    this.blurRadius = 15,
    this.spreadRadius = 1,
    this.text = "",
    this.textStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    required this.duration,
    required this.icon,
    required this.iconSize,
    required this.buttonheight,
    required this.buttonwidth,
    // Added parameter for text
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
      child: AnimatedContainer(
        duration: widget.duration,
        height: widget.buttonheight,
        width: widget.buttonwidth,
        decoration: BoxDecoration(
          color: widget.isButtonPressed
              ? widget.pasifeButtonColor
              : widget.activeButtonColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          boxShadow: [
            BoxShadow(
              color: widget.isButtonPressed
                  ? widget.shadowColor
                  : widget.noShadowColor,
              offset: widget.bottomOffset,
              blurRadius: widget.blurRadius,
              spreadRadius: widget.blurRadius,
            ),
            BoxShadow(
              color: widget.isButtonPressed
                  ? widget.shadowColor
                  : widget.noShadowColor,
              offset: widget.topOffset,
              blurRadius: widget.blurRadius,
              spreadRadius: widget.blurRadius,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: widget.iconSize,
              color: widget.isButtonPressed
                  ? widget.activeIconColor
                  : widget.pasifeIconColor,
            ),
            const SizedBox(width: 8),
            Text(
              widget.text,
              style: widget.textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
