import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/three_doors_no_option.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

class LivingRoom extends StatelessWidget {
  const LivingRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return ThreeDoorsNoOption(
        title: 'Living Room',
        imgPath: 'assets/images/living_room.png',
        description: livingRoomDescription(),
        firstDoorText: 'Go to the Bedroom',
        firstDoorRoute: RouteManager.bedroom,
        secondDoorText: 'Go to the Giant Safe',
        secondDoorRoute: RouteManager.giantSafe,
        thirdDoorText: 'Go to the Main Hall',
        thirdDoorRoute: RouteManager.mainHall);
  }
}
