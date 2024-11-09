import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/widgets/popular_card.dart';
import '../../../widgets/header_text.dart';

class ExplorePage extends StatefulWidget {
  ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    topBar(context),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      alignment: Alignment.centerLeft,
                      child: HeaderText(
                        text: 'Discover new places',
                        fontSize: 30.0,
                        color: Colors.black,
                      ),
                    ),
                    _sliderCards(),
                    _headers(context, "Popular this week", "Show all"),
                    PopularCard(
                        imagePath: AssetImage('assets/images/image_card.jpg'),
                        title: "Andy & Cindy's Dinner",
                        subTitle: "87 Botsford Circle Apt",
                        review: 4.8,
                        ratings: 233,
                        buttonText: "Delivery",
                        hasActionButton: true),
                    PopularCard(
                        imagePath: AssetImage('assets/images/image_card.jpg'),
                        title: "Andy & Cindy's Dinner",
                        subTitle: "87 Botsford Circle Apt",
                        review: 4.8,
                        ratings: 233,
                        buttonText: "Delivery",
                        hasActionButton: true),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'collections');
                      },
                        child: _headers(context, "Collections", "Show all")),

                    SizedBox(
                      height: 10,
                    ),
                    _sliderCollections(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

Widget topBar(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, 'search');
        },
        child: Container(
          //width: 370,
          width: MediaQuery.of(context).size.width * 0.75,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all( color: Colors.orange),
            borderRadius: BorderRadius.circular(12)
          ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Search...'),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.15,
        height: MediaQuery.of(context).size.height * 0.12,
        child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.shade400,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'filter');
              },
              child: Icon(
                Icons.filter_list,
                size: 40,
                color: Colors.white,
              ),
            )),
      )
    ],
  );
}

Widget _sliderCards() {
  return SizedBox(
      height: 350.0,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _tarjeta(context);
          }));
}

Widget _tarjeta(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'place-detail');
    },
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/image_card_3.jpg',
              width: 210.0,
              height: 250.0,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text("Andy & Cindy's Diner",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("87 Botsford Circle Apt",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  Text("4.8",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                  Text("(233 ratings)",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: 80.0,
                    height: 18.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll<Color>(Colors.orange),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Delivery',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: HeaderText(
          text: textHeader,
          fontSize: 20.0,
          color: Colors.black,
        ),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0),
            ),
            Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _sliderCollections() {
  return Container(
    height: 180.0,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _tarjetaCollection(context);
        }),
  );
}

Widget _tarjetaCollection(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            image: AssetImage('assets/images/desayuno.png'),
          ),
        ),
      ],
    ),
  );
}

// Widget _populares(BuildContext context, String foto) {
//   return Column(
//     children: [
//       Padding(
//         padding: const EdgeInsets.symmetric(vertical: 10),
//         child: Row(
//           children: [
//             ClipRRect(
//               child: Image.asset(
//                 foto,
//                 width: 80,
//                 height: 80,
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.symmetric(vertical: 7),
//                     child: HeaderText(
//                         text: "Andy & Cindy's Diner",
//                         color: Colors.black,
//                         fontSize: 17),
//                   ),
//                   Container(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       '87 Botsford Circle Apt',
//                       style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 13,
//                           fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.star,
//                         color: Colors.yellow,
//                         size: 16,
//                       ),
//                       Text(
//                         '4.5',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 13,
//                             fontWeight: FontWeight.w500),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(left: 5),
//                         child: Text(
//                           '(230 ratings)',
//                           style: TextStyle(
//                               color: Colors.grey,
//                               fontSize: 13,
//                               fontWeight: FontWeight.w500),
//                         ),
//                       ),
//                       Container(
//                         width: 110,
//                         height: 18,
//                         margin: EdgeInsets.symmetric(horizontal: 15),
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.orange,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                           onPressed: () {},
//                           child: Text(
//                             'Delivery',
//                             style: TextStyle(fontSize: 11),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }
