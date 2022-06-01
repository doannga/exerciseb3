import 'package:flutter/material.dart';
import 'package:simple_calculator_b3/screen_five/btvn_b5/my_cart_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: ListViewDemo(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: const WelcomPage(),
      //home: const TasteMe(),
      //home: const FlexDemo(),
      // home: const ScreenFive(),
      home: const MyCard2(),
    );
  }
}
