import 'package:first_class_flutter/HOME_PAGE/list_view_builder.dart';
import 'package:flutter/material.dart';

import 'home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("Home Page")),
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(child: HomeSlider())

            // HomeScreenBody()
          ],
        ),
      ),
    );
  }
}
