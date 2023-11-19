import 'package:dictionaly_app/page/comunity/comunity.dart';
import 'package:dictionaly_app/page/favorite/dashbord_page.dart';
import 'package:dictionaly_app/page/favorite/favorite.dart';
import 'package:dictionaly_app/page/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NaviPage extends StatefulWidget {
  const NaviPage({Key? key}) : super(key: key);

  @override
  State<NaviPage> createState() => _NaviPageState();
}

class _NaviPageState extends State<NaviPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const ComunityPage(),
    const DashboardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icon/home.svg',
            ),
            label: "ໜ້າຫຼັກ",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icon/comunity.svg',
            ),
            label: "ຊຸມຊົນ",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icon/favorite.svg',
            ),
            label: "ຄໍາທີ່ມັກ",
          ),
        ],
      ),
    );
  }
}
