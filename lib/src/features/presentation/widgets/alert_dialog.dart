import 'package:flutter/material.dart';

void  alertDialog(BuildContext context, ImageProvider<Object> imagePath, String title, String subTitle, buttonText, void Function() buttonFunction){

  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: imagePath,
                color: Colors.orange,
                width: 130,
                height: 130,
              ),
              Text(
                title, textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(subTitle, textAlign: TextAlign.center,),
              doneButton(context, buttonText, buttonFunction),
            ],
          ),
        ),
      );
    },
  );
}

Widget doneButton(BuildContext context, String buttonText, void Function() buttonFunction) {
  return GestureDetector(
    onTap: buttonFunction,
    child: Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(12)),
      child:  Center(
        child: Text(
          buttonText,
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}