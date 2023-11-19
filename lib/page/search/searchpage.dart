import 'package:dictionaly_app/constant/constanecolor.dart';
import 'package:dictionaly_app/constant/constantfonststyle.dart';
import 'package:dictionaly_app/page/search/widget/detailspage.dart';
import 'package:dictionaly_app/page/search/widget/searchbar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.colorBackground,
      appBar: AppBar(
        title: const Text("ວັດຈະນານຸກົມ", style: ConstantText.biggest),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: ConstantColor.colorMain,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: SearchEngine(),
          ),
          Expanded(
            child: ListView.builder(
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
          ),
        ],
      ),
    );
  }
}
