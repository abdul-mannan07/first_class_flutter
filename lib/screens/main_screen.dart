import 'package:first_class_flutter/screens/FAV/fav.dart';
import 'package:first_class_flutter/screens/HOME_PAGE/home_screen.dart';
import 'package:first_class_flutter/screens/SETTINGS/setting.dart';
import 'package:flutter/material.dart';

class MainScreenBody extends StatefulWidget {
  const MainScreenBody({super.key});

  @override
  State<MainScreenBody> createState() => _MainScreenBodyState();
}

class _MainScreenBodyState extends State<MainScreenBody> {
  final List screenItems = [
    HomeScreen(),
    FavScreen(),
    SettingScreen(),
  ];
  final List screenName = ["Home Page", "Fav Page", "Setting Page"];
  var currentIndexNo = 0;
  onTapScteen(index) {
    setState(() {
      currentIndexNo = index;
      print(currentIndexNo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Center(child: Text(screenName[currentIndexNo])),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndexNo,
          onTap: onTapScteen,
          selectedIconTheme: IconThemeData(size: 60, color: Colors.green),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          ]),
      body: screenItems[currentIndexNo],
    );
  }
}
