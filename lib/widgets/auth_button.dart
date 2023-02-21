// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  const AuthButton({
    Key? key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color:textColor),
        ),
      ),
    );
  }
}
