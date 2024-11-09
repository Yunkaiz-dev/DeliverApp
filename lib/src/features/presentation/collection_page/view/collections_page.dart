import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/widgets/back_button.dart';
import 'package:myapp/src/features/presentation/widgets/header_text.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          title: HeaderText(
              text: 'Collections', color: Colors.black, fontSize: 30),
          leading: backButton(context, Colors.black),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 45),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 2,
            children: [
              _tarjetaCollection(context),
              _tarjetaCollection(context),
              _tarjetaCollection(context),
              _tarjetaCollection(context),
              _tarjetaCollection(context),
              _tarjetaCollection(context),
              _tarjetaCollection(context),
              _tarjetaCollection(context),
              _tarjetaCollection(context),
            ],
          ),
        ),
      ]),
    );
  }
}

Widget _tarjetaCollection(BuildContext context) {
  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, 'collection-detail');
    },
    child: Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image(
          width: 150,
          height: 180,
          fit: BoxFit.cover,
          image: AssetImage('assets/images/desayuno.png'),
        ),
      ),
      Container(
        width: 150,
        height: 180,
        decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 1.3),
            borderRadius: BorderRadius.circular(10)),
      ),
      Container(
        alignment: AlignmentDirectional.center,
        margin: EdgeInsets.only(right: 45, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            HeaderText(text: 'Asia', color: Colors.white, fontSize: 18),
            Text(
              '128 places',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    ]),
  );
}
