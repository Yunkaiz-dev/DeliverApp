
import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/collection_detail_page/view/collection_detail_page.dart';
import 'package:myapp/src/features/presentation/collection_page/view/collections_page.dart';
import 'package:myapp/src/features/presentation/filter_page/view/filter_page.dart';
import 'package:myapp/src/features/presentation/forgot_password/view/forgot_your_password_page.dart';
import 'package:myapp/src/features/presentation/login_page/view/login_page.dart';
import 'package:myapp/src/features/presentation/places_detail_page/view/place_detail_page.dart';
import 'package:myapp/src/features/presentation/register_page/view/register_page.dart';
import 'package:myapp/src/features/presentation/search_page/view/search_page.dart';
import 'package:myapp/src/features/presentation/tabs/profile_tab/view/profile_detail_page.dart';
import 'package:myapp/src/features/presentation/tabs/tap_pages.dart';
import 'package:myapp/src/features/presentation/welcome_page/view/welcome_page.dart';

final routes = <String, WidgetBuilder>{
  "welcome": (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) =>  LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPasswordPage(),
  'register': (BuildContext context) => RegisterPage(),
  'tabs': (BuildContext context) => TabPages(),
  'search': (BuildContext context) => SearchPage(),
  'filter': (BuildContext context) => FilterPage(),
  'collections': (BuildContext context) => CollectionsPage(),
  'collection-detail': (BuildContext context) => CollectionDetailPage(),
  'place-detail': (BuildContext context) => PlaceDetailPage(),
  'profile-detail': (BuildContext context) => ProfileDetailPage(),
};