// import 'package:flutter/material.dart';

// class ListViewBuilder extends StatefulWidget {
//   const ListViewBuilder({super.key});

//   @override
//   State<ListViewBuilder> createState() => _ListViewBuilderState();
// }

// class _ListViewBuilderState extends State<ListViewBuilder> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: ListView.builder(
//           //list view
//           scrollDirection: Axis.horizontal,
//           itemCount: 4,
//           itemBuilder: (context, index) {
//             return Container(
//               width: MediaQuery.of(context).size.width * 0.70,
//               height: MediaQuery.of(context).size.height * 0.25,
//               child: Card(
//                 color: Colors.blueGrey,
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        // color: Colors.red,
        child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 300,
                    height: 300,
                    // width: MediaQuery.of(context).size.width * 0.50,
                    // height: MediaQuery.of(context).size.height * 0.15,
                    child: Image.asset("assets/mercedes-maybach-s-class.jpg")),
              );
            }),
      ),
    );
  }
}
