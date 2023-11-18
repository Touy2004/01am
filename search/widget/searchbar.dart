import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:dictionaly_app/constant/constanecolor.dart';

class SearchEngine extends StatelessWidget {
  const SearchEngine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.search, size: 30, color: ConstantColor.colorMain),
            const SizedBox(width: 10),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: ConstantColor.colorMain),
                  border: InputBorder.none,
                ),
              ),
            ),
            SvgPicture.asset('assets/icon/menu.svg'),
          ],
        ),
      ),
    );
  }
}
