import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/one_door_one_option.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

class HiddenRoom extends StatelessWidget {
  const HiddenRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return OneDoorOneOption(
        title: 'Hidden Room',
        imgPath: 'assets/images/hidden_room.png',
        description: hiddenRoomDescription(),
        optionText: 'Examine the room',
        optionAction: RouteManager.hiddenRoomExamination,
        firstDoorText: 'Go to the Basement',
        firstDoorAction: RouteManager.basement);
  }
}
