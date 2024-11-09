import 'package:flutter/material.dart';

Widget backButton(BuildContext context, Color color) {
  return IconButton(
    icon: Icon(
      size: 30,
      Icons.arrow_back,
      color: color,
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
