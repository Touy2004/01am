import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.mail),
        SizedBox(
          width: 15,
        ),
        SizedBox(
          width: 300,
          child: TextField(),
        ),
      ],
    );
  }
}
