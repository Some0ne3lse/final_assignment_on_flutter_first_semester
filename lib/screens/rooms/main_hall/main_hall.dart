import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/three_doors_one_option.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

class MainHall extends StatelessWidget {
  const MainHall({super.key});

  @override
  Widget build(BuildContext context) {
    return ThreeDoorsOneOption(
        title: 'Main Hall',
        imgPath: 'assets/images/main_hall.png',
        description: mainHallDescription(),
        optionText: 'Examine the room',
        optionAction: RouteManager.mainHallExamination,
        firstDoorText: 'Go to the Hall',
        firstDoorAction: RouteManager.hall,
        secondDoorText: 'Go to the Living Room',
        secondDoorAction: RouteManager.livingRoom,
        thirdDoorText: 'Go to the Entrance',
        thirdDoorAction: RouteManager.entrance);
  }
}
