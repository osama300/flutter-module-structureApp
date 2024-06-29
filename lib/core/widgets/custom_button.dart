import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final bool loading;
  final String text;
  final void Function() onClick;
  const CustomButton({super.key, required this.loading,
    required this.onClick, required this.text});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final isMobile = screenWidth < 600;

    return SizedBox(
        width: double.infinity,
        height: isMobile ? 40.0 : 50.0,
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: const Color(0xFF4A148C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            onPressed: () async {
              onClick.call();
            },
            child: loading
                ? const CircularProgressIndicator(
            )
                :  Text(
              text,
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        )
    );
  }
}
