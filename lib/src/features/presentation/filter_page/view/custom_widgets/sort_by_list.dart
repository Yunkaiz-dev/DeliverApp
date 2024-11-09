import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/widgets/header_text.dart';

class SortByList extends StatefulWidget {
   SortByList({super.key, required this.text, this.onTap, required this.isActive});

   final String text;
   final bool isActive;
   final void Function()? onTap;


  @override
  State<SortByList> createState() => _SortByListState();
}

class _SortByListState extends State<SortByList> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey.shade300
              ),
            ),
          ),
          child: ListTile(
            title: HeaderText(text: widget.text, color: widget.isActive ? Colors.orange : Colors.black54, fontSize: 12),
            trailing: widget.isActive?  Icon(Icons.check, color: Colors.orange) : null,
            onTap: widget.onTap,
          ),
        )
      ],
    );
  }
}
