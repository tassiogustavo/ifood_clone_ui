import 'package:clone_ifood/pages/ifood_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "IFood Clone",
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: const IFoodPage(),
    );
  }
}
