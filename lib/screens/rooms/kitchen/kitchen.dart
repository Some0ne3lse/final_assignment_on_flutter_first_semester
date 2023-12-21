import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/two_doors_one_option.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

class Kitchen extends StatelessWidget {
  const Kitchen({super.key});

  @override
  Widget build(BuildContext context) {
    return TwoDoorsOneOption(
        title: 'Kitchen',
        imgPath: 'assets/images/kitchen.png',
        description: kitchenDescription(),
        optionText: 'Examine the room',
        optionRoute: RouteManager.kitchenExamination,
        firstDoorText: 'Go to the Storage',
        firstDoorRoute: RouteManager.storage,
        secondDoorText: 'Go to the Entrance',
        secondDoorRoute: RouteManager.entrance);
    // return TwoDoorsOneOption(
    //   title: 'Kitchen',
    //   imgPath: 'assets/images/kitchen.png',
    //   description: kitchenDescription(),
    //   firstButtonText: 'Examine the room',
    //   firstButtonAction: RouteManager.kitchenExamination,
    //   secondButtonText: 'Go to the Storage',
    //   secondButtonAction: RouteManager.storage,
    //   thirdButtonText: 'Go to the Entrance',
    //   thirdButtonAction: RouteManager.entrance,
    // );
  }
}

//
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 69, 74, 73),
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.black,
//         foregroundColor: Colors.white,
//         title: const Text('Kitchen'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: Column(
//                 children: [
//                   Image.asset(
//                     'assets/images/kitchen.png',
//                     width: 200,
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   SizedBox(
//                     width: 300,
//                     child: Text(
//                       kitchenDescription(),
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 50,
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context)
//                           .pushNamed(RouteManager.kitchenExamination);
//                     },
//                     child: const Text('Examine the room'),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('Go to the Storage'),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context).pushNamed(RouteManager.entrance);
//                     },
//                     child: const Text('Go to the Entrance'),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         height: kBottomNavigationBarHeight,
//         color: Colors.black,
//         child: Row(
//           children: [
//             TextButton(
//               style: TextButton.styleFrom(foregroundColor: Colors.white),
//               onPressed: () {
//                 Navigator.of(context).pushNamed(RouteManager.inventory);
//               },
//               child: const Row(
//                 children: [
//                   Text('Inventory'),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Icon(Icons.build)
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
