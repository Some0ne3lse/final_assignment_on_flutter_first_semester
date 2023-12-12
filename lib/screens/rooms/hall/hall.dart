import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/three_doors.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

bool dogTamed = false;
bool dogSleeping = false;

class Hall extends StatelessWidget {
  const Hall({super.key});

  @override
  Widget build(BuildContext context) {
    String descriptionHall;
    String image;
    if (dogTamed == true && dogSleeping == false) {
      descriptionHall = hallDescriptionTwo();
      image = 'assets/images/no_dog.png';
    } else if (dogTamed == true && dogSleeping == true) {
      descriptionHall = hallDescriptionThree();
      image = 'assets/images/no_dog.png';
    } else {
      descriptionHall = hallDescriptionOne();
      image = 'assets/images/dog.png';
    }
    return ThreeDoorsNoOption(
        title: 'Hall',
        imgPath: image,
        description: descriptionHall,
        firstDoorText: 'Go to the Garden',
        firstDoorAction: RouteManager.garden,
        secondDoorText: 'Go to the Basement',
        secondDoorAction: RouteManager.basement,
        thirdDoorText: 'Go to the Main Hall',
        thirdDoorAction: RouteManager.mainHall);
  }
}
