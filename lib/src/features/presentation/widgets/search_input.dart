import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 10),
      // decoration: BoxDecoration(
      //     color: Color.fromRGBO(142, 142, 147, 1.2)
      // ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.orange,
              ),
            ),
            hintText: 'Search...',
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
    );

  }
}




