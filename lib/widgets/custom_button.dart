import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  Color color;
  CustomButton(
      {super.key,
      required this.color,
      required this.text,
      required this.onTap});
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 19,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
