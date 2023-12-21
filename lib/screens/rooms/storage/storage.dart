import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/one_door_one_option.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

class Storage extends StatelessWidget {
  const Storage({super.key});

  @override
  Widget build(BuildContext context) {
    return OneDoorOneOption(
        locationName: 'Storage',
        imgPath: 'assets/images/storage.png',
        description: storageDescription(),
        optionText: 'Examine the room',
        optionAction: RouteManager.storageExamination,
        firstDoorText: 'Go to the Kitchen',
        firstDoorAction: RouteManager.kitchen);
  }
}
