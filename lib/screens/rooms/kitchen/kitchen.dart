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
  }
}
