import 'package:flutter/material.dart';
import 'package:myapp/route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      title: 'material app',
      routes: routes,
      initialRoute: 'welcome',
    );
  }
}
