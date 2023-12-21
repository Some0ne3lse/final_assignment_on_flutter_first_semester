import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/three_doors_one_option.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

class Entrance extends StatelessWidget {
  const Entrance({super.key});

  @override
  Widget build(BuildContext context) {
    return ThreeDoorsOneOption(
        title: 'Entrance',
        imgPath: 'assets/images/entrance.png',
        description: entranceDescription(),
        optionText: 'Examine the room',
        optionRoute: RouteManager.entranceExamination,
        firstDoorText: 'Go to the Kitchen',
        firstDoorRoute: RouteManager.kitchen,
        secondDoorText: 'Go to the Main Hall',
        secondDoorRoute: RouteManager.mainHall,
        thirdDoorText: 'Go to the Library',
        thirdDoorRoute: RouteManager.library);
  }
}
