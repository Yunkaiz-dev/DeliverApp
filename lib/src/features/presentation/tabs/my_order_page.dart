import 'package:flutter/material.dart';

class MyOrderPage extends StatelessWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1903113759.
  const MyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
    );
  }
}
