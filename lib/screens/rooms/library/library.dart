import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/one_door_one_option.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return OneDoorOneOption(
        locationName: 'Library',
        imgPath: 'assets/images/library.png',
        description: libraryDescription(),
        optionText: 'Examine the room',
        optionAction: RouteManager.libraryExamination,
        firstDoorText: 'Go to the Entrance',
        firstDoorAction: RouteManager.entrance);
  }
}
