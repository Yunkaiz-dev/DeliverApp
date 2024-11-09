import 'package:flutter/material.dart';

import 'header_text.dart';

Widget card({
  required BuildContext context,
  required double width,
  required double height,
  required ImageProvider<Object> imagePath,
  required Color titleColor,
  required Color subTitleColor,
  required String title,
  required String subTitle
}) {
  return Container(
    padding: EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image(
            image: imagePath,
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderText(text: title, color: titleColor, fontSize: 16),
            HeaderText(text: subTitle, color: subTitleColor, fontSize: 13)
          ],
        ),
      ],
    ),
  );
}
