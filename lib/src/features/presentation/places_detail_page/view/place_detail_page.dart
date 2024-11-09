import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/widgets/back_button.dart';
import 'package:myapp/src/features/presentation/widgets/header_text.dart';

class PlaceDetailPage extends StatelessWidget {
  const PlaceDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.40, //395,
            backgroundColor: Colors.orange,
            leading: backButton(context, Colors.white),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/share.png',
                  width: 30,
                  height: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_border,
                  size: 30,
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.37, //350,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/image_card.jpg')),
                  Container(
                    width: double.infinity,
                    height: 350,
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1.5)),
                  ),
                  Wrap(
                    children: [
                      _promoButton(),
                      _placeInfo(),
                      _placeStats(),
                      _placePromo(),
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: HeaderText(
                    text: 'Features Items', color: Colors.black, fontSize: 19),
              ),
              _sliderCards(),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: HeaderText(
                    text: 'Full Menu', color: Colors.black, fontSize: 19),
              ),
              _fullMenu(context),
              HeaderText(text: 'Reviews', color: Colors.black, fontSize: 19),
              _reviews(),
              HeaderText(text: 'Your Rating', color: Colors.black, fontSize: 19),
              _yourRatings(),

              SizedBox(height: 100,),

            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.orange,
        onPressed: () {},
        label: HeaderText(
          text: 'Add to Cart',
          color: Colors.white,
          fontSize: 17,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Container _placePromo() {
    return Container(
      padding: EdgeInsets.all(20),
      height: 105,
      color: Color(0xffe8ca92),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderText(
                  text: 'New try Pickup', color: Colors.orange, fontSize: 15),
              HeaderText(
                  text: 'Pickup on your time. Your order is\nready whe you are',
                  color: Colors.black,
                  fontSize: 15)
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: Colors.orange,
              ),
              child: Text(
                'Free Delivery',
                style: TextStyle(fontSize: 15),
              )),
        ],
      ),
    );
  }

  Container _placeStats() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      padding: EdgeInsets.symmetric(horizontal: 40),
      height: 70,
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(color: Colors.white),
        bottom: BorderSide(color: Colors.white),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 19,
                  ),
                  HeaderText(text: ' 4.5', color: Colors.white, fontSize: 17)
                ],
              ),
              Text(
                '351 Ratings',
                style: TextStyle(
                    color: Colors.grey.shade500, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Colors.white))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.bookmark,
                    color: Colors.white,
                    size: 19,
                  ),
                  HeaderText(text: ' 137K', color: Colors.white, fontSize: 17)
                ],
              ),
              Text(
                'Favorites',
                style: TextStyle(
                    color: Colors.grey.shade500, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Colors.white))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.photo,
                    color: Colors.white,
                    size: 19,
                  ),
                  HeaderText(text: ' 346', color: Colors.white, fontSize: 17)
                ],
              ),
              Text(
                'Photos',
                style: TextStyle(
                    color: Colors.grey.shade500, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column _placeInfo() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          padding: EdgeInsets.only(top: 20, bottom: 7),
          child: HeaderText(
              text: 'Boom Lay Ho Huat Fried Prawn Noodle',
              color: Colors.white,
              fontSize: 30),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.grey,
              ),
              Text(
                '03 Jameson Manors Apt. 177',
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )
            ],
          ),
        ),
      ],
    );
  }

  Container _promoButton() {
    return Container(
      margin: EdgeInsets.only(top: 110, left: 30, right: 15),
      width: double.infinity,
      height: 25,
      child: Row(
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: StadiumBorder(side: BorderSide())),
              child: Text(
                'free Delivery',
                style: TextStyle(fontSize: 17),
              ))
        ],
      ),
    );
  }
}

Widget _sliderCards() {
  return Container(
    height: 210,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                    width: 200,
                    height: 100,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/espresso.png')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: HeaderText(
                    text: 'Premium Espresso Cafe',
                    color: Colors.black,
                    fontSize: 15),
              ),
              HeaderText(
                  text: '\$9.50', color: Colors.grey.shade600, fontSize: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: HeaderText(
                        text: 'Select', color: Colors.orange, fontSize: 15),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 130),
                    child: Image(
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/plus_order.png'),
                    ),
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

Widget _fullMenu(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Column(
      children: [
        MenuItem(
          texto: 'Salads',
          itemCount: ' 2',
        ),
        MenuItem(
          texto: 'Soups',
          itemCount: ' 6',
        ),
        MenuItem(
          texto: 'Chicken',
          itemCount: ' 4',
        ),
        MenuItem(
          texto: 'Vegetables',
          itemCount: ' 7',
        ),
      ],
    ),
  );
}

class MenuItem extends StatelessWidget {
  MenuItem({
    super.key,
    required this.texto,
    required this.itemCount,
  });

  final String texto;
  final String itemCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
          child: Column(
            children: [
              ListTile(
                title: HeaderText(
                    text: texto, color: Colors.black54, fontSize: 17),
                trailing: HeaderText(
                    text: itemCount, color: Colors.black54, fontSize: 17),
              ),
              _sliderCards(),
            ],
          ),
        ),
      ],
    );
  }
}


Widget _reviews(){
  return Container(
    height: 135,
    padding: EdgeInsets.only(left: 20),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CardsReviews();
        },
    ),
  );
}


class CardsReviews extends StatelessWidget {
  const CardsReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  width: 49,
                  height: 43,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/user.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderText(text: 'Mike Smithson', color: Colors.black, fontSize: 14),
                    Text('45 Reviews', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.grey),)
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Colors.orange,
                    width: 60,
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HeaderText(text: '4', color: Colors.white, fontSize: 12),
                        Icon(Icons.star, color: Colors.white, size: 14,)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text('iuweruewrjuwdfknsv,sdfn2erioqpoqpfklwdfmsdvherihwrijwriugrjigeknf',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text('See full Review',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _yourRatings(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    margin: EdgeInsets.only(top: 10),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.orange.withOpacity(0.5),
                  width: 60,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HeaderText(text: '1', color: Colors.white, fontSize: 12),
                      Icon(Icons.star, color: Colors.white, size: 14,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 20, top: 20),
          child: HeaderText(text: 'qkjqoqer kjwfkjwerfo ksdfkowpfwe qkjejiqw', color: Colors.grey, fontSize: 12),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 20, top: 10),
          child: HeaderText(text: '+ Edit your review', color: Colors.grey, fontSize: 15),
        ),
      ],
    ),
  );
}
