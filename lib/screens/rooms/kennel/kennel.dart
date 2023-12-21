import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/garden/dog.dart';
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
        optionAction: RouteManager.kennelExamination,
        firstDoorText: 'Go to the Garden',
        firstDoorAction: RouteManager.garden);
    if (dogSleeping == false) {
      mainContent = Scaffold(
        backgroundColor: const Color.fromARGB(255, 69, 74, 73),
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: const Text('Dog'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      'assets/images/happy_dog.png',
                      width: 200,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 300,
                      child: Text(
                        'The dog won\'t let you into the kennel!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            RouteManager.garden,
                            (Route<dynamic> route) => false);
                      },
                      child: const Text('Go back to the Garden'),
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
