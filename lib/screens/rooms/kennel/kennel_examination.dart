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
  }
}
