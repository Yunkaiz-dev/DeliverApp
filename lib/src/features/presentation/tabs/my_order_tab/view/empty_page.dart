import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/widgets/header_text.dart';

class EmptyPage extends StatefulWidget {
  const EmptyPage({super.key});

  @override
  State<EmptyPage> createState() => _EmptyPageState();
}

class _EmptyPageState extends State<EmptyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: HeaderText(text: 'My Orders', color: Colors.black, fontSize: 20),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 130,
              backgroundColor: Colors.white.withOpacity(0.9),
              backgroundImage: AssetImage('assets/images/emptyOrder.png'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Cart Empty',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Good food is always cooking! Go ahead, order some yummy items from our menu',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
