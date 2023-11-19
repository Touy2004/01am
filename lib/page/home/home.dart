import 'package:dictionaly_app/constant/constanecolor.dart';
import 'package:dictionaly_app/constant/constantfonststyle.dart';
import 'package:dictionaly_app/page/home/widget/profile.dart';
import 'package:dictionaly_app/page/home/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> dataList = ["Item 1", "Item 2", "Item 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.colorBackground,
      appBar: AppBar(
        backgroundColor: ConstantColor.colorBackground,
        title: const Profile(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/login");
            },
            icon: SvgPicture.asset('assets/icon/notification.svg'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "ລາວ - ລາວ",
                style: ConstantText.biggest,
              ),
              const SearchButton(),
              const FeaturedContent(
                text1: "ຄຳທີ່ເຄີຍຄົ້ນຫາ",
                text2: "ເບິ່ງທັ້ງໜົດ",
                path: "/dashboard",
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  return ListItemWidget(itemText: dataList[index]);
                },
              ),
              const FeaturedContent(
                text1: "ຄຳຖາມທີ່ນ່າສົນໃຈ",
                text2: "ເບິ່ງທັ້ງໜົດ",
                path: "/community",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

