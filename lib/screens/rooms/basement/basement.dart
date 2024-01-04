import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/basement/basement_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/one_door_one_option.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/two_doors_one_option.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

// This is the basement. It has two different rooms, depending on whether you
// you have found the hidden room or not

class Basement extends StatelessWidget {
  const Basement({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent;
    if (hiddenDoorFound == false) {
      mainContent = OneDoorOneOption(
          locationName: 'Basement',
          imgPath: 'assets/images/basement.png',
          description: basementDescriptionOne(),
          optionText: "Examine the room",
          optionRoute: RouteManager.basementExamination,
          firstDoorText: 'Go to the Hall',
          firstDoorRoute: RouteManager.hall);
    } else {
      mainContent = TwoDoorsOneOption(
          title: 'Basement',
          imgPath: 'assets/images/basement.png',
          description: basementDescriptionTwo(),
          optionText: 'Examine the room',
          optionRoute: RouteManager.basementExamination,
          firstDoorText: 'Go to the hidden room',
          firstDoorRoute: RouteManager.hiddenRoom,
          secondDoorText: 'Go to the hall',
          secondDoorRoute: RouteManager.hall);
    }
    return mainContent;
  }
}
