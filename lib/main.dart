import 'package:flutter/material.dart';

import 'Screen/mainscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ăn Ngon',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}