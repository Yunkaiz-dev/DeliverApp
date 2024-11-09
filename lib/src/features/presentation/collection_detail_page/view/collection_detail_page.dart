import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/widgets/back_button.dart';
import 'package:myapp/src/features/presentation/widgets/favorite_card.dart';
import 'package:myapp/src/features/presentation/widgets/header_text.dart';

class CollectionDetailPage extends StatefulWidget {
  const CollectionDetailPage({super.key});

  @override
  State<CollectionDetailPage> createState() => _CollectionDetailPageState();
}

class _CollectionDetailPageState extends State<CollectionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.orange,
            expandedHeight: 230,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/desayuno.png'),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1.3)),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HeaderText(
                            text: 'Asia', color: Colors.white, fontSize: 30),
                        HeaderText(
                            text: 'Restaurant',
                            color: Colors.white,
                            fontSize: 30)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            leading: backButton(context, Colors.white),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: HeaderText(
                      text: '128 places', color: Colors.black45, fontSize: 17),
                ),
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
            ),
          ),
        ],
      ),
    );
  }
}
