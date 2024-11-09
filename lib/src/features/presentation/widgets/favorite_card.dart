import 'package:flutter/material.dart';

import 'header_text.dart';

class FavoriteCard extends StatelessWidget {
  FavoriteCard(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subTitle,
      required this.review,
      required this.ratings,
      required this.buttonText,
      required this.hasActionButton,
      required this.isfavorite});

  final ImageProvider<Object> imagePath;
  final String title;
  final String subTitle;
  final double review;
  final int ratings;
  final String buttonText;
  final bool hasActionButton;
  final bool isfavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                child: Image(
                  image: imagePath,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: HeaderText(
                              text: title, color: Colors.black, fontSize: 17),
                          //width: 150,
                        ),
                        SizedBox(width: 90,),
                        IconButton(onPressed: (){},
                            icon: Icon(Icons.bookmark_border_outlined,
                              size: 35,
                              color: isfavorite ? Colors.pink : Colors.grey,
                            )
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
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
                          width: 80,
                          height: 18,
                          margin: EdgeInsets.symmetric(horizontal: 20),
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
