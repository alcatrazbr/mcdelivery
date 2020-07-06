import 'package:flutter/material.dart';
import 'package:mcdelivery/pages/homePage.dart';
import 'package:mcdelivery/screens/MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFood',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
      // home: HomePage(title: 'MyFood - seu food delivery'),
    );
  }
}
