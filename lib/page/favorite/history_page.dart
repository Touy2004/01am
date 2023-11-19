import 'package:dictionaly_app/constant/constanecolor.dart';
import 'package:dictionaly_app/page/search/widget/detailspage.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.colorBackground,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(
                  "Item ${index + 1}",
                  style: const TextStyle(color: ConstantColor.colorMain),
                ),
                onTap: () {
                  // Navigate to ItemDetailsPage and pass the item information
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ItemDetailsPage(itemNumber: "${index + 1}"),
                    ),
                  );
                },
              ),
              Container(
                height: 0.25,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 201, 201, 200),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}