import 'package:flutter/material.dart';

class CuisinePills extends StatefulWidget {
  CuisinePills({super.key});

  @override
  State<CuisinePills> createState() => _CuisinePillsState();
}

class _CuisinePillsState extends State<CuisinePills> {
  bool btnAmerican = false;
  bool btnSushi = false;
  bool btnAsia = false;
  bool btnDessert = false;
  bool btnFastFood = false;
  bool btnVietnamese = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            _filterButtonChip(() {
              setState(() {
                btnAmerican = !btnAmerican;
              });
            }, btnAmerican, 'American'),
            _filterButtonChip(() {
              setState(() {
                btnAsia = !btnAsia;
              });
            }, btnAmerican, 'Asia'),
          ],
        ),
      ],
    );
  }
}

Widget _filterButtonChip(void Function()? onTap, bool isActive, String label) {
  return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: StadiumBorder(
          side: BorderSide(color: isActive ? Colors.orange : Colors.grey),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(color: isActive ? Colors.orange : Colors.grey),
      ));
}

//Otra forma

class ChipWidget extends StatefulWidget {
  ChipWidget({super.key, required this.items});

  final List items;

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  // final items = [
  //   "5-7 Years",
  //   "8-13 Years",
  //   "14+ Years",
  // ];
  List<String> selectedItem = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: widget.items
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: FilterChip(
                      label: Text(e),
                      selected: selectedItem.contains(e),
                      //selectedColor: Colors.orange,
                      backgroundColor: Colors.transparent,
                      shape: StadiumBorder(
                          side: BorderSide(
                              color: selectedItem.contains(e)
                                  ? Colors.orange
                                  : Colors.grey)),
                      onSelected: (bool value) {
                        if (selectedItem.contains(e)) {
                          selectedItem.remove(e);
                        } else {
                          selectedItem.add(e);
                        }
                        setState(() {});
                      }),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
