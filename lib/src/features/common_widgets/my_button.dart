import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key, required this.buttonText, this.onTap});

  final String buttonText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: 350,
        height: 45,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
