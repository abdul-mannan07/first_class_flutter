import 'package:first_class_flutter/screens/HOME_PAGE/list_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'hs_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: const Center(child: Text("Home Page")),
      // ),
      body: SafeArea(
        child: Column(
          children: [HomeSlider(), HomeScreenBody()],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           Container(
//             height: 100,
//             width: 100,
//             color: Colors.red,
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               height: 100,
//               width: 100,
//               color: Colors.yellow,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
