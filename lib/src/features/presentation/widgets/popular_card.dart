import 'package:flutter/material.dart';

import 'header_text.dart';

class PopularCard extends StatelessWidget {
   PopularCard({super.key, required this.imagePath, required this.title, required this.subTitle, required this.review, required this.ratings, required this.buttonText, required this.hasActionButton});

   final ImageProvider<Object> imagePath;
   final String title;
   final String subTitle;
   final double review;
   final int ratings;
   final String buttonText;
   final bool hasActionButton;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                ClipRRect(
                  child: Image(
                    image: imagePath,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 7),
                        child: HeaderText(
                            text: title,
                            color: Colors.black,
                            fontSize: 17),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          subTitle,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          Text(
                            '$ratings',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              '($review ratings)',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            width: 110,
                            height: 18,
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: hasActionButton?  ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                buttonText,
                                style: TextStyle(fontSize: 11),
                              ),
                            )
                            : null,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
