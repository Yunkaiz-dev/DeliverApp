import 'package:flutter/material.dart';
import 'package:myapp/src/features/common_widgets/header_text.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    _topBar(context),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      alignment: Alignment.centerLeft,
                      child: HeaderText(
                        text: 'Discover new places',
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    _sliderCards()
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

// Metodo topBar
Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.orange),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Text('Search...'),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.15,
        height: MediaQuery.of(context).size.width * 0.2,
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.shade400,
          child: Icon(
            Icons.filter_list,
            color: Colors.white,
            size: 40,
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.orange),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ],
  );
}

// Metodo para mostrar las tarjetas principales
Widget _sliderCards() {
  return SizedBox(
    height: 350,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  width: 150,
                  height: 200,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/image_card_3.jpg'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Andy & Cindy's Dinner",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text("87 Bostsford Circle Apt",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                      Text(" 4.8", style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      ),                      
                      Text(" 233 rating", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        width: 80,
                        height: 18,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: (){},
                          child: Text('Delivery', style: TextStyle(fontSize: 11),)
                        ),

                      ),
                  ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ),
  );
}