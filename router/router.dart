import 'package:dictionaly_app/page/bottombar/bottombar.dart';
import 'package:dictionaly_app/page/login/login.dart';
import 'package:dictionaly_app/page/search/searchpage.dart';
import 'package:flutter/material.dart';

var customRoutes = <String, WidgetBuilder>{
  '/':(context) => const NaviPage(),
  '/login':(context) => const LoginPage(),
  '/search':(context) => const SearchPage(),
};
