import 'package:flutter/material.dart';

class FilterChips extends StatefulWidget {
  FilterChips(
      {super.key, required this.items});

  final List items;

  @override
  State<FilterChips> createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  // final items = [
  //   "5-7 Years",
  //   "8-13 Years",
  //   "14+ Years",
  // ];
  List<String> selectedItem = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: widget.items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            childAspectRatio: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 4),
        itemBuilder: (context, index) {
          return FilterChip(
              label: Text(widget.items[index]),
              selected: selectedItem.contains(widget.items[index]),
              //selectedColor: Colors.orange,
              backgroundColor: Colors.transparent,
              shape: StadiumBorder(
                  side: BorderSide(
                      color: selectedItem.contains(widget.items[index])
                          ? Colors.orange
                          : Colors.grey)),
              onSelected: (bool value) {
                if (selectedItem.contains(widget.items[index])) {
                  selectedItem.remove(widget.items[index]);
                } else {
                  selectedItem.add(widget.items[index]);
                }
                setState(() {});
              });

        },
      ),
    );
  }
}
