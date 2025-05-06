import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.70,
      child: Card(
        color: Color.fromARGB(255, 243, 237, 237),
        child: ListView.builder(
          //list view
          scrollDirection: Axis.vertical,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.70,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Card(
                color: Colors.blueGrey,
              ),
            );
          },
        ),
      ),
    );
  }
}
