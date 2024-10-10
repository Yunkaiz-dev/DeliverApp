import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/tabs/Explore_page.dart';
import 'package:myapp/src/features/presentation/tabs/favorite_page.dart';
import 'package:myapp/src/features/presentation/tabs/my_order_page.dart';
import 'package:myapp/src/features/presentation/tabs/profile_page.dart';

class TabPage extends StatefulWidget {
  TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {

  List Pages = [
    ExplorePage(),
    MyOrderPage(),
    FavoritePage(),
    ProfilePage(),
  ];
  
int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          elevation: 0,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentpage,
          onTap: (value) {
            setState(() {
              currentpage = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment), label: 'My Order'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin), label: 'Profile'),
          ]),
      body: Pages[currentpage],
    );
  }
}
