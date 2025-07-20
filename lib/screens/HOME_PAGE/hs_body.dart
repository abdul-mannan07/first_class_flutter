import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                EdgeInsets.all(0), // ✅ Fixed (was EdgeInsetsGeometry.all(0))
            child: Card(
              // color: Colors.amberAccent,
              child: Container(
                height: 400,
                width: 300,
                child: Column(
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 3 / 4,
                        child: Image.asset('assets/logo.png'),
                      ),
                    ),
                    Text(
                      "French Cuisine",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                // child: ListView(
                //   children: [
                //     Image.asset('assets/logo.png'),
                //     const Text("data"),
                //   ],
                // ),
              ),
            ),
          );
        },
      ),
    );
  }
}


    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     children: [
    //       Card(
    //         color: Colors.blue,
    //         child: Container(
    //           height: 200,
    //           width: 150,
    //         ),
    //         shape: RoundedRectangleBorder(
    //           side: BorderSide(color: Colors.black, width: 1),
    //           borderRadius: BorderRadius.circular(5),
    //         ),
    //       ),
    //       Card(
    //         color: Colors.blue,
    //         child: Container(
    //           height: 200,
    //           width: 150,
    //         ),
    //         shape: RoundedRectangleBorder(
    //           side: BorderSide(color: Colors.black, width: 1),
    //           borderRadius: BorderRadius.circular(5),
    //         ),
    //       ),
    //       Card(
    //         color: Colors.blue,
    //         child: Container(
    //           height: 200,
    //           width: 150,
    //         ),
    //         shape: RoundedRectangleBorder(
    //           side: BorderSide(color: Colors.black, width: 1),
    //           borderRadius: BorderRadius.circular(5),
    //         ),
    //       ),
    //       Card(
    //         color: Colors.blue,
    //         child: Container(
    //           height: 200,
    //           width: 150,
    //         ),
    //         shape: RoundedRectangleBorder(
    //           side: BorderSide(color: Colors.black, width: 1),
    //           borderRadius: BorderRadius.circular(5),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
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
//   }
// } 

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