import 'package:dictionaly_app/constant/constanecolor.dart';
import 'package:dictionaly_app/constant/constantfonststyle.dart';
import 'package:dictionaly_app/page/home/widget/profile.dart';
import 'package:flutter/material.dart';

class PostContentPage extends StatefulWidget {
  const PostContentPage({super.key});

  @override
  State<PostContentPage> createState() => _PostContentPageState();
}

class _PostContentPageState extends State<PostContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.colorBackground,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Create Your Story",
          style: ConstantText.biggest,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                backgroundColor: MaterialStateColor.resolveWith(
                  (Set<MaterialState> states) =>
                      states.contains(MaterialState.pressed)
                          ? Colors.white
                          : ConstantColor.colorMain,
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Post",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Profile(),
            const SizedBox(height: 20),
            Container(
              height: 1,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 201, 201, 200),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Topic:",
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 10),
            _buildCustomTextField(
              "Enter your topic here",
              ConstantColor.colorMain.withOpacity(0.5),
            ),
            const SizedBox(height: 20),
            const Text(
              "Description:",
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 10),
            _buildCustomTextField(
              "Enter your description here",
              ConstantColor.colorMain.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomTextField(String hintText, Color fillColor) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      maxLines: 5,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: fillColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
