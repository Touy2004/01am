import 'package:dictionaly_app/page/bottombar/bottombar.dart';
import 'package:dictionaly_app/page/comunity/comunity.dart';
import 'package:dictionaly_app/page/comunity/content_comunity_page.dart';
import 'package:dictionaly_app/page/comunity/post_content_page.dart';
import 'package:dictionaly_app/page/favorite/dashbord_page.dart';
import 'package:dictionaly_app/page/login/login.dart';
import 'package:dictionaly_app/page/search/searchpage.dart';
import 'package:dictionaly_app/page/search/widget/detailspage.dart';
import 'package:flutter/material.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const NaviPage(),
  '/login': (context) => const LoginPage(),
  '/search': (context) => const SearchPage(),
  '/dashboard': (context) => const DashboardPage(),
  '/itemdetails': (context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ??
            {};
    final itemNumber = args['itemNumber'] as String;
    return ItemDetailsPage(itemNumber: itemNumber);
  },
  '/community': (context) => const ComunityPage(),
  '/postcontent': (context) => const PostContentPage(),
  '/contentcommunity': (context) => const ContentCommunityPage()
};
