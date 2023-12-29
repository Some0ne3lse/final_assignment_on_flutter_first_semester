import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/one_item_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/notes/notes.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

class MainHallExamination extends StatelessWidget {
  const MainHallExamination({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      mainContent: OneItemExamination(
        image: 'assets/images/letter.png',
        examinationText: mainHallExamination(),
        itemDescription: letter(),
        interactWithItem: 'Read the letter',
        routeManagerLocation: RouteManager.mainHall,
        leaveItemText: 'Leave the letter',
      ),
      locationName: 'Main Hall',
    );
  }
}
