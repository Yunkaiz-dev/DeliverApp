import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/tabs/my_order_tab/view/empty_page.dart';

import '../../../widgets/header_text.dart';

class MyOrderPage extends StatefulWidget {
  MyOrderPage({super.key});

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  final emptyOrderState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: emptyOrderState
          ? EmptyPage()
          : CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  centerTitle: true,
                  title: HeaderText(
                      text: 'My Orders', color: Colors.black, fontSize: 20),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Column(
                      children: [
                        _orders(),
                        _checkoutResume(),
                      ],
                    )
                  ]),
                ),
              ],
            ),
    );
  }
}

Widget _orders() {
  return Column(
    children: [
      _cardOrder(),
    ],
  );
}

Widget _cardOrder() {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(248, 248, 248, 1),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1),
              spreadRadius: 1,
              blurRadius: 4),
        ]),
    child: Column(
      children: [
        Row(
          children:
          [
            _cardOrderTopContent(),
          ],
        ),
        Column(
          children: [
            _tems(),
          ],
        ),
        _moreItems(),
      ],
    ),
  );
}


Container _cardOrderTopContent() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 7, bottom: 7, right: 20),
          child: HeaderText(
              text: 'Little Creatures - Club Street',
              color: Colors.black,
              fontSize: 20),
        ),
        Container(
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.grey,
                size: 16,
              ),
              Text(
                '87 Botsford Circle Apt',
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                //width: 110,
                height: 20,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.orange),
                  onPressed: () {},
                  child: Text('Free Delivery'),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _tems() {
  return Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.grey.shade300),),
    ),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderText(text: 'Special Gajananad Bhel', color: Colors.black, fontSize: 15),
          Text('Mixed Vegetables, Chicken Egg', style: TextStyle(
            color: Colors.grey
          ),),
        ],
      ),
      trailing: Text('\$19.85'),
    ),
  );

}

_moreItems(){
  return Container(
    child: ListTile(
      title: HeaderText(text: 'Add more items', color: Colors.redAccent, fontSize: 17),
    ),
  );
}

Widget _checkoutResume(){
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(210, 211, 215, 1),
          spreadRadius: 1.0,
          blurRadius: 4.0,
        )
      ]
    ),
    child: Column(
      children: [
        _itemsCheckOutResume(text: 'Subtotal', value: '93.50'),
        _itemsCheckOutResume(text: 'Tax & Fees', value: '2.00'),
        _itemsCheckOutResume(text: 'Delivery', value: 'Free'),
        _checkOutButton(),
      ],
    ),
  );
}


Widget _itemsCheckOutResume({required String text, required String value}){
  return Container(
    height: 40,
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(
        color: Colors.grey.shade300
      ))
    ),
    child: ListTile(
      title: HeaderText(text: text, color: Colors.black45, fontSize: 15),
      trailing: HeaderText(text: value, color: Colors.black45, fontSize: 15),
    ),
  );
}

Widget _checkOutButton(){
  return Container(
    width: double.infinity,
    height: 45,
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(8)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        HeaderText(text: 'Continue', color: Colors.white, fontSize: 17),
        HeaderText(text: '95.50', color: Colors.white, fontSize: 17),
      ],
    ),
  );
}