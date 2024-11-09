import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/filter_page/view/custom_widgets/price_slider.dart';
import 'package:myapp/src/features/presentation/filter_page/view/custom_widgets/sort_by_list.dart';
import 'package:myapp/src/features/presentation/widgets/header_text.dart';

import 'custom_widgets/filter_chips.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {

  //SORT BY BOOLEANS
  bool topRated = false;
  bool nearMe = false;
  bool costLowToHigh = false;
  bool costHighToLow = false;
  bool mostPopular = false;

  //SORT BY BOOLEANS
  bool openNow = false;
  bool creditCards = false;
  bool alcoholServed = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: HeaderText(text: 'Filters', color: Colors.black, fontSize: 30),
        centerTitle: true,
        elevation: 0.5,
        leading: Container(
          padding: EdgeInsets.only(top: 20, left: 7),
          child: HeaderText(text: 'Reset', color: Colors.black, fontSize: 17),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context); //luego limpiar los filtros
            },
            child: Container(
              padding: EdgeInsets.only(top: 20, right: 10),
              child:
                  HeaderText(text: 'Done', color: Colors.orange, fontSize: 17),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 15, bottom: 10, left: 15),
                child: Text(
                  'CUISINES',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              FilterChips(items: [
                'Americans',
                'Asia',
                'Sushi',
                'Pizza',
                'Desserts',
                'Latin',
                'Italian'
              ]),

              _sortByContainer(),
              _sortByFilter(),
              PriceSlider(),

            ]),
          ),
        ],
      ),
    );
  }


  Widget _sortByContainer(){
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only( top: 30, bottom: 5, left: 15),
          child: Text(
            'SORT BY',
            style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
                fontWeight: FontWeight.w600),
          ),
        ),
        SortByList(
          text: 'Top Rated',
          isActive: topRated,
          onTap: (){
            setState(() {
              topRated = !topRated;
            });
          },
        ),
        SortByList(
          text: 'Near Me',
          isActive: nearMe,
          onTap: (){
            setState(() {
              nearMe = !nearMe;
            });
          },
        ),
        SortByList(
          text: 'Cost High to Low',
          isActive: costHighToLow,
          onTap: (){
            setState(() {
              costHighToLow = !costHighToLow;
            });
          },
        ),
        SortByList(
          text: 'Cost Low to High',
          isActive: costLowToHigh,
          onTap: (){
            setState(() {
              costLowToHigh = !costLowToHigh;
            });
          },
        ),
        SortByList(
          text: 'Most Popular',
          isActive: mostPopular,
          onTap: (){
            setState(() {
              mostPopular = !mostPopular;
            });
          },
        ),
      ],
    );
  }


  Widget _sortByFilter(){
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(top: 30, bottom: 5, left: 15),
          child: Text(
            'FILTER',
            style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
                fontWeight: FontWeight.w600),
          ),
        ),
        SortByList(
          text: 'Open Now',
          isActive: openNow,
          onTap: (){
            setState(() {
              openNow = !openNow;
            });
          },
        ),
        SortByList(
          text: 'Credit Cards',
          isActive: creditCards,
          onTap: (){
            setState(() {
              creditCards = !creditCards;
            });
          },
        ),
        SortByList(
          text: 'Alcohol Served',
          isActive: alcoholServed,
          onTap: (){
            setState(() {
              alcoholServed = !alcoholServed;
            });
          },
        ),

      ],
    );
  }


}


