import 'package:flutter/material.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:1116369159.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:42485931.
Widget backButton(BuildContext context, Color color) {
  return IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: Icon(Icons.arrow_back, size: 30, color: color),
  );
}
