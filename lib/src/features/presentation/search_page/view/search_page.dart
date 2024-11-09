import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/widgets/header_text.dart';
import 'package:myapp/src/features/presentation/widgets/popular_card.dart';

import '../../widgets/my_card.dart';
import '../../widgets/search_input.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 30,
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    child: HeaderText(
                        text: 'Search', color: Colors.black, fontSize: 40),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 10),
                  ),
                  SearchInput(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HeaderText(
                            text: 'Recent search',
                            color: Colors.black,
                            fontSize: 20),
                        GestureDetector(
                          onTap: () {},
                          child: HeaderText(
                              text: 'Clear all',
                              color: Colors.orange,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SliderRecentSearch(),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: HeaderText(
                        text: 'Recommended for you',
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  PopularCard(
                      imagePath: AssetImage('assets/images/espresso.png'),
                      title: 'Kellys Cafe and Espresso',
                      subTitle: '87 Botsford Circle Apt',
                      review: 4.8,
                      ratings: 233,
                      buttonText: "", hasActionButton: false
                  ),
                  PopularCard(
                      imagePath: AssetImage('assets/images/breakfast.png'),
                      title: 'El Celler de Can Roca',
                      subTitle: '87 Botsford Circle Apt',
                      review: 4.8,
                      ratings: 233,
                      buttonText: "", hasActionButton: false
                  ),
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}

class SliderRecentSearch extends StatelessWidget {
  const SliderRecentSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 190.0,
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return card(
                  context: context,
                  height: 120,
                  width: 160,
                  imagePath: AssetImage('assets/images/image_card.jpg'),
                  title: "Andy & Cindy's Dinner",
                  subTitle: '87 Botsford Circle Apt',
                  titleColor: Colors.black,
                  subTitleColor: Colors.grey);
            }));
  }
}
