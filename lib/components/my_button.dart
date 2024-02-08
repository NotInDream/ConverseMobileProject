import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnText;
  final Color btnTextColors;
  final Color btnColors;
  final Function()? onTap;

  const MyButton({
    super.key,
    required this.btnText,
    required this.btnTextColors,
    required this.btnColors,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.only(
          top: 8,
          bottom: 8,
          left: 32,
          right: 32,
        ),
        decoration: BoxDecoration(
          color: btnColors,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          btnText,
          style: TextStyle(
            color: btnTextColors,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
