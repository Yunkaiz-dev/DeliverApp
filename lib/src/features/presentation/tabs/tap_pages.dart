import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/widgets/alert_dialog.dart';

import 'explore_tab/view/explore_page.dart';
import 'favorite_tab/view/favorite_page.dart';
import 'my_order_tab/view/my_order_page.dart';
import 'profile_tab/view/profile_page.dart';

class TabPages extends StatefulWidget {
  const TabPages({super.key});

  @override
  State<TabPages> createState() => _TabPagesState();
}

class _TabPagesState extends State<TabPages> {

  int currentPage = 0;
  List<Widget> pages = [
    ExplorePage(),
    MyOrderPage(),
    FavoritePage(),
    ProfilePage(),
  ];

  Future<void> _pedirLocation(BuildContext context) async {
   alertDialog(
       context,
       AssetImage('assets/images/location.png'),
       'Enable your location',
       'Please allow to use your location for better experience',
       'Enable',
       () {
         //Navigator.pushNamed(context, 'tabs');
       },
       );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //validamos que el usuario debe aceptar activar la geolocalizacion
    Future.delayed(Duration.zero, () {
      _pedirLocation(context);
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          elevation: 0,
          iconSize: 30,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          currentIndex: currentPage,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'EXPLORE'),
            BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'MY ORDER'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'FAVORITE'),
            BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'PROFILE'),
          ]),
      body: pages[currentPage],
    );
  }
}


