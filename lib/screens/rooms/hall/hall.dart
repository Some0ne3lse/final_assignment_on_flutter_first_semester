import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/three_doors_no_option.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

// The hall has different descriptions and images depending on what state the
// dog is in.

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
        firstDoorRoute: RouteManager.garden,
        secondDoorText: 'Go to the Basement',
        secondDoorRoute: RouteManager.basement,
        thirdDoorText: 'Go to the Main Hall',
        thirdDoorRoute: RouteManager.mainHall);
  }
}
