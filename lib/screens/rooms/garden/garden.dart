import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/drama_actions/dog_attack.dart';
import 'package:final_assignment_on_flutter/screens/rooms/hall/hall.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/two_doors_one_option.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

class Garden extends StatelessWidget {
  const Garden({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = TwoDoorsOneOption(
        title: 'Garden',
        imgPath: 'assets/images/garden.png',
        description: gardenDescription(),
        optionText: 'Examine the dog',
        optionAction: RouteManager.dog,
        firstDoorText: 'Go to the Kennel',
        firstDoorAction: RouteManager.kennel,
        secondDoorText: 'Go to the Hall',
        secondDoorAction: RouteManager.hall);

    if (dogTamed == false) {
      mainContent = const DogAttack();
    }
    return mainContent;
  }
}
