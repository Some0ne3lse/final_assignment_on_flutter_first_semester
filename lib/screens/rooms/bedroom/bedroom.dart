import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/one_door_two_options.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

class Bedroom extends StatelessWidget {
  const Bedroom({super.key});

  @override
  Widget build(BuildContext context) {
    return OneDoorTwoOptions(
        title: 'Bedroom',
        imgPath: 'assets/images/bedroom.png',
        description: bedroomDescription(),
        optionOneText: 'Examine the room',
        optionOneAction: RouteManager.bedroomExamination,
        optionTwoText: 'Examine Bob',
        optionTwoAction: RouteManager.bobExamination,
        firstDoorText: 'Go to the Living room',
        firstDoorAction: RouteManager.livingRoom);
  }
}
