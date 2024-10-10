import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/login_page/view/login_page.dart';
import 'package:myapp/src/features/presentation/password_page/view/password_page.dart';
import 'package:myapp/src/features/presentation/register_page/view/register_page.dart';
import 'package:myapp/src/features/presentation/welcome_page/view/welcome_page.dart';
import 'package:myapp/src/features/presentation/tabs/tab_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'password': (BuildContext context) => PasswordPage(),
  'register': (BuildContext context) => RegisterPage(),
  'tabs': (BuildContext context) => TabPage(),
};
