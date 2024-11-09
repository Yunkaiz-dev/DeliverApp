import 'package:flutter/material.dart';

class PriceSlider extends StatefulWidget {
  const PriceSlider({super.key});

  @override
  State<PriceSlider> createState() => _PriceSliderState();
}

class _PriceSliderState extends State<PriceSlider> {

  RangeValues _values = RangeValues(0, 1);
  int _minPrice = 0;
  int _maxPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(top: 30, bottom: 5, left: 15),
          child: Text(
            'PRICE',
            style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
                fontWeight: FontWeight.w600),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('\$$_minPrice', style: TextStyle(
              fontSize: 16,
            ),),
            Container(
              width: MediaQuery.of(context).size.width * 0.70,
              child: RangeSlider(
                activeColor: Colors.orange,
                  inactiveColor: Colors.grey,
                  values: _values,
                  min: 0,
                  max: 1000,
                  onChanged: (value) {
                  setState(() {
                    _values = value;
                    _minPrice = _values.start.round();
                    _maxPrice = _values.end.round();
                  });
                  },
              ),
            ),
            Text('\$$_maxPrice', style: TextStyle(
              fontSize: 16,
            ),),
          ],
        ),
      ],
    );
  }
}
