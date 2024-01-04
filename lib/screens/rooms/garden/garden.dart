import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/garden/dog_attack.dart';
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
        optionRoute: RouteManager.dog,
        firstDoorText: 'Go to the Kennel',
        firstDoorRoute: RouteManager.kennel,
        secondDoorText: 'Go to the Hall',
        secondDoorRoute: RouteManager.hall);

    // If the dog hasn't been thrown the shoes yet, the DogAttack will start
    if (dogTamed == false) {
      mainContent = const DogAttack();
    }
    return mainContent;
  }
}
