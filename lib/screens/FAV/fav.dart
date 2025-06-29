import 'package:flutter/material.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  List _color = [Colors.green, Colors.yellow];
  List _name = ["Ramsha", "Maryam", "Shahnila", "Alina", "Saba"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _name.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_name[index].toString()),
              trailing: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _name.removeAt(index);
                    });
                  },
                  child: Icon(Icons.favorite)),
            );
          }),
    );
    // return Container(
    //     decoration: BoxDecoration(
    //       color: Colors.amberAccent,
    //       borderRadius: BorderRadius.circular(1),
    //     ),
    //     child: Center(child: Text("Fav Page")));
  }
}
