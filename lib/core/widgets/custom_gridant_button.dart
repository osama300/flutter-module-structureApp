import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double height;
  final double borderRadius;
  final List<Color> gradientColors;
  final TextStyle textStyle;
  final double width;
  const CustomGradientButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.height = 50.0,
    this.borderRadius = 32.0,
    this.width = 0,
    this.gradientColors = const [Color(0xffB0255C), Color(0xffDC3547)],
    this.textStyle = const TextStyle(
      color: Colors.white,
      fontSize: 16.0,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width == 0 ? double.infinity : width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent, // Set this to transparent
            padding:
                EdgeInsets.zero, // Remove padding to use container decoration
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(borderRadius), // Same as container
            ),
          ),
          child: Ink(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColors, // Same as container
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius:
                  BorderRadius.circular(borderRadius), // Same as container
            ),
            child: Container(
              constraints: BoxConstraints(minHeight: height),
              alignment: Alignment.center,
              child: Text(
                buttonText,
                style: textStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
