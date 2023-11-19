import 'package:dictionaly_app/constant/constanecolor.dart';
import 'package:dictionaly_app/router/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lao Dictionaly',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ConstantColor.colorMain),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: customRoutes,
    );
  }
}
