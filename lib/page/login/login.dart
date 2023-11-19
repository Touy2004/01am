import 'package:dictionaly_app/constant/constantfonststyle.dart';
import 'package:dictionaly_app/page/login/widget/field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back,",
              style: ConstantText.big,
            ),
            Text("Glad to meet you again!, please login to use the app."),
            Field()
          ],
        ),
      ),
    );
  }
}
