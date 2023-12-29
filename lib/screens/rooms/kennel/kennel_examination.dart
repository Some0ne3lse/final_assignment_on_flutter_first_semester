import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/buttons/try_item.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/one_item_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/notes/notes.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

class KennelExamination extends StatelessWidget {
  const KennelExamination({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      mainContent: OneItemExamination(
        image: 'assets/images/homework.png',
        examinationText: kennelExamination(),
        itemDescription: homework(),
        interactWithItem: 'Read the homework',
        routeManagerLocation: RouteManager.kennel,
        leaveItemText: 'Leave the homework',
      ),
      locationName: 'Kennel',
    );
    //   Scaffold(
    //   backgroundColor: const Color.fromARGB(255, 69, 74, 73),
    //   appBar: AppBar(
    //     backgroundColor: Colors.black,
    //     foregroundColor: Colors.white,
    //     title: const Text('Kennel'),
    //   ),
    //   body: SingleChildScrollView(
    //     child: Column(
    //       children: [
    //         const SizedBox(height: 20),
    //         Center(
    //           child: Column(
    //             children: [
    //               const SizedBox(
    //                 height: 30,
    //               ),
    //               Image.asset(
    //                 'assets/images/homework.png',
    //                 width: 200,
    //               ),
    //               const SizedBox(
    //                 height: 20,
    //               ),
    //               SizedBox(
    //                 width: 300,
    //                 child: Text(
    //                   style: const TextStyle(color: Colors.white, fontSize: 15),
    //                   kennelExamination(),
    //                 ),
    //               ),
    //               const SizedBox(
    //                 height: 50,
    //               ),
    //               TryItem(
    //                   itemDescription: homework(),
    //                   interactWithItem: 'Read the homework'),
    //               GoBackFromItem(
    //                   routeManagerLocation: RouteManager.kennel,
    //                   leaveItemText: 'Leave the homework'),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
