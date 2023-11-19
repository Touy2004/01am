import 'package:dictionaly_app/constant/constanecolor.dart';
import 'package:dictionaly_app/constant/constantfonststyle.dart';
import 'package:flutter/material.dart';

class ContentCommunityPage extends StatelessWidget {
  const ContentCommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.colorBackground,
      appBar: AppBar(
        title: const Text(
          "Post",
          style: ConstantText.biggest,
        ),
      ),
      body: Stack(
        children: [
          // Your main content goes here
          Positioned.fill(
            child: YourMainContentWidget(),
          ),

          // Positioned at the bottom, your TextField
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              color: Colors.white,
              padding: const EdgeInsets.only(
                  right: 30, left: 30, bottom: 30, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Your text field...',
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class YourMainContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with your main content
    return Center(
      child: Text('Your main content goes here'),
    );
  }
}
