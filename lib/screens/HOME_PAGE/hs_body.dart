// import 'package:flutter/material.dart';

// class HomeScreenBody extends StatefulWidget {
//   const HomeScreenBody({super.key});

//   @override
//   State<HomeScreenBody> createState() => _HomeScreenBodyState();
// }

// class _HomeScreenBodyState extends State<HomeScreenBody> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         // color: Colors.yellow,
//         child: ListView.builder(
//             itemCount: 10,
//             itemBuilder: (contex, index) {
//               return Card(
//                 child: ListTile(
//                   leading: Container(
//                     width: 400,
//                     child: Image.asset("assets/mercedes-maybach-s-class.jpg"),
//                   ),
//                   title: Text(
//                     "data",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//                   ),
//                   subtitle: Text(
//                       "In various contexts, prompt can mean: an instruction or signal for action, quick or ready to act, or something that encourages or reminds someone of something. It can also be a symbol on a computer screen indicating readiness to receive input. "),
//                 ),
//               );
//             }),
//       ),
//     );
//   }
// }
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
      height: 150,
      width: 100,
      child: Card(
        shape: Border.all(width: 1),
        color: Colors.blue,
      ),
    );
    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
    //     children: [
    //       Container(
    //         height: 300,
    //         width: 300,
    //         color: Colors.redAccent,
    //       ),
    //       Container(
    //         height: 400,
    //         width: 400,
    //         color: Colors.cyan,
    //       ),
    //     ],
    //   ),
    // );
  }
}
