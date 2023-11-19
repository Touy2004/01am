import 'package:dictionaly_app/constant/constanecolor.dart';
import 'package:dictionaly_app/constant/constantfonststyle.dart';
import 'package:dictionaly_app/page/search/widget/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ComunityPage extends StatelessWidget {
  const ComunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.colorBackground,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "ຊຸມຊົມ",
          style: ConstantText.biggest,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SearchEngine(),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return ListContentWidget(itemText: "Topic");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ConstantColor.colorMain,
        tooltip: 'Increment',
        onPressed: () {
          Navigator.pushNamed(context, "/postcontent");
        },
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}

class ListContentWidget extends StatefulWidget {
  final String itemText;

  const ListContentWidget({Key? key, required this.itemText}) : super(key: key);

  @override
  _ListContentWidgetState createState() => _ListContentWidgetState();
}

class _ListContentWidgetState extends State<ListContentWidget> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 65,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/contentcommunity");
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(65, 65),
            ),
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.itemText),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                      child: SvgPicture.asset(
                        isLiked
                            ? "assets/icon/ຫົວໃຈ2.svg"
                            : "assets/icon/ຫົວໃຈ1.svg",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
