import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/widgets/header_text.dart';

import '../../../widgets/favorite_card.dart';

class FavoritePage extends StatefulWidget {
  FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Text(''),
            backgroundColor: Colors.white,
            title: HeaderText(
                text: 'My Favorite', color: Colors.black, fontSize: 17),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    FavoriteCard(
                      imagePath: AssetImage('assets/images/desayuno.png'),
                      title: 'Little Creatures',
                      subTitle: 'subTitle',
                      review: 4.8,
                      ratings: 248,
                      buttonText: 'Delivery',
                      hasActionButton: true,
                      isfavorite: false,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
