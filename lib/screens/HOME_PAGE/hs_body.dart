import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  List<bool> isFavorited = List.generate(10, (_) => false);
  //final int index = 0;

  // = Icon(Icons.favorite_border_outlined);
  // final Icon currentIcons2 = Icon(Icons.favorite);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 3 / 4),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                EdgeInsets.all(0), // ✅ Fixed (was EdgeInsetsGeometry.all(0))
            child: Card(
              // color: Colors.amberAccent,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: Text(
                      "French Cuisine",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    'Fresh and delicious food prepared with care.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  Expanded(child: SizedBox()),
                  // const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Add to Cart",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isFavorited[index] = !isFavorited[index];
                                // currentState != true;
                                // index = 1;
                              });
                            },
                            child: Icon(
                              isFavorited[index]
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              size: 20,
                            ))
                      ],
                    ),
                  )
                ],
              ),
              // child: ListView(
              //   children: [
              //     Image.asset('assets/logo.png'),
              //     const Text("data"),
              //   ],
              // ),
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