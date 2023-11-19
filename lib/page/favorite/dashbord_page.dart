import 'package:dictionaly_app/constant/constanecolor.dart';
import 'package:dictionaly_app/constant/constantfonststyle.dart';
import 'package:dictionaly_app/page/favorite/favorite.dart';
import 'package:dictionaly_app/page/favorite/history_page.dart';
import 'package:dictionaly_app/page/search/widget/searchbar.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.colorBackground,
      appBar: AppBar(
        backgroundColor: ConstantColor.colorBackground,
        centerTitle: true,
        title: const Text(
          "ຄຳທີ່ຂ້ອຍມັກ",
          style: ConstantText.biggest,
        ),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(25.0),
            child: SearchEngine(),
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    tabs: <Widget>[
                      Tab(
                        text: "ຄຳທີ່ມັກ",
                      ),
                      Tab(
                        text: "ຄຳທີ່ເຄີຍຄົ້ນຫາ",
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        FavoritePage(),
                        HistoryPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
