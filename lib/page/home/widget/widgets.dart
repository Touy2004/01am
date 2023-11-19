import 'package:dictionaly_app/constant/constantfonststyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeaturedContent extends StatefulWidget {
  final String text1;
  final String text2;
  final String path;

  const FeaturedContent({
    Key? key,
    required this.text1,
    required this.text2,
    required this.path,
  }) : super(key: key);

  @override
  State<FeaturedContent> createState() => _FeaturedContentState();
}

class _FeaturedContentState extends State<FeaturedContent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text1,
          style: ConstantText.big,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, widget.path);
          },
          child: Text(
            widget.text2,
            style: ConstantText.small,
          ),
        )
      ],
    );
  }
}

class SearchButton extends StatefulWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 15),
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () => Navigator.pushNamed(context, "/search"),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.search_outlined,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text("ຄົ້ນຫາ “ ວຽກບ້ານ,ບົດເຝິກຫັດ... ”"),
                ],
              ),
              SvgPicture.asset('assets/icon/menu.svg'),
            ],
          ),
        ),
      ),
    );
  }
}

class ListItemWidget extends StatefulWidget {
  final String itemText;

  const ListItemWidget({Key? key, required this.itemText}) : super(key: key);

  @override
  _ListItemWidgetState createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 65,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/itemdetails',
                  arguments: {'itemNumber': widget.itemText});
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
                    const Icon(Icons.arrow_forward_ios),
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
