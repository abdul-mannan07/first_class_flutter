import 'package:first_class_flutter/HOME_PAGE/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "OUR FIRST PROJECT",
      home: HomeScreen(),
      //home screen
    );
  }
}
