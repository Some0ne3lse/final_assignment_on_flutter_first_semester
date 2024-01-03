import 'package:final_assignment_on_flutter/buttons_for_many_places/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/garden/dog.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/one_door_one_option.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

class Kennel extends StatelessWidget {
  const Kennel({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = OneDoorOneOption(
        locationName: 'Kennel',
        imgPath: 'assets/images/kennel.png',
        description: kennelDescription(),
        optionText: 'Examine the room',
        optionRoute: RouteManager.kennelExamination,
        firstDoorText: 'Go to the Garden',
        firstDoorRoute: RouteManager.garden);
    if (dogSleeping == false) {
      mainContent = Scaffold(
        appBar: AppBar(
          title: const Text('Dog'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    ImageAndText(
                      image: 'assets/images/happy_dog.png',
                      text: 'The dog won\'t let you into the kennel!',
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GoBackFromItem(
                        routeManagerLocation: RouteManager.garden,
                        leaveItemText: 'Go back to the garden'),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
    return mainContent;
  }
}
