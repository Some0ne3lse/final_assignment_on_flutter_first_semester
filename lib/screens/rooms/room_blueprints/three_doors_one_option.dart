import 'package:final_assignment_on_flutter/buttons_for_many_places/bottom_bar.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/examine_room_button.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:flutter/material.dart';

// This is the blueprint for three doors and one examination.
// Read GoToScreen and ExamineRoom comments for more info

class ThreeDoorsOneOption extends StatelessWidget {
  const ThreeDoorsOneOption({
    super.key,
    required this.title,
    required this.imgPath,
    required this.description,
    required this.optionText,
    required this.optionRoute,
    required this.firstDoorText,
    required this.firstDoorRoute,
    required this.secondDoorText,
    required this.secondDoorRoute,
    required this.thirdDoorText,
    required this.thirdDoorRoute,
  });

  final String title;
  final String imgPath;
  final String description;
  final String optionText;
  final String optionRoute;
  final String firstDoorText;
  final String firstDoorRoute;
  final String secondDoorText;
  final String secondDoorRoute;
  final String thirdDoorText;
  final String thirdDoorRoute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  ImageAndText(
                    image: imgPath,
                    text: description,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ExamineRoomButton(
                    optionRoute: optionRoute,
                    optionText: optionText,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GoToScreenButton(
                      routeManagerLocation: firstDoorRoute,
                      text: firstDoorText),
                  const SizedBox(
                    height: 10,
                  ),
                  GoToScreenButton(
                      routeManagerLocation: secondDoorRoute,
                      text: secondDoorText),
                  const SizedBox(
                    height: 10,
                  ),
                  GoToScreenButton(
                      routeManagerLocation: thirdDoorRoute,
                      text: thirdDoorText),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
