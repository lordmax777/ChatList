import 'package:flutter/material.dart';
import 'package:yangiproect/models/boshsahifa.dart';
import 'package:yangiproect/models/yangiSahifa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ijaraga Mashina',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: HomePage(),
    );
  }
}
