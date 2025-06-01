import 'package:first_class_flutter/screens/HOME_PAGE/home_screen.dart';
import 'package:first_class_flutter/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       theme:  ThemeData(
        primaryColor: Colors.green[900],
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
       debugShowCheckedModeBanner: false,
      title: "OUR FIRST PROJECT",
      home: MainScreenBody(),
      //home screen
    );
  }
}
