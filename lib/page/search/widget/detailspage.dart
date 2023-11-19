import 'package:dictionaly_app/constant/constanecolor.dart';
import 'package:dictionaly_app/constant/constantfonststyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemDetailsPage extends StatefulWidget {
  final String itemNumber;

  const ItemDetailsPage({Key? key, required this.itemNumber}) : super(key: key);

  @override
  _ItemDetailsPageState createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  bool isFavorite = false; // Initial state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.colorBackground,
      appBar: AppBar(
        title: const Text(
          "ລາຍລະອຽດ",
          style: ConstantText.biggest,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                // Toggle the favorite state
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: isFavorite
                  ? SvgPicture.asset("assets/icon/ຫົວໃຈ2.svg")
                  : SvgPicture.asset(
                      "assets/icon/ຫົວໃຈ1.svg"), // Change to the appropriate SVG
            ),
          )
        ],
      ),
      body: Center(
        child: Text("Details for Item ${widget.itemNumber}"),
      ),
    );
  }
}
