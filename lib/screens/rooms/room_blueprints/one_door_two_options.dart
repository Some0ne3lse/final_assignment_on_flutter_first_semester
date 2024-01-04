import 'package:final_assignment_on_flutter/buttons_for_many_places/bottom_bar.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/examine_room_button.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:flutter/material.dart';

// Here we have the blueprint for rooms with one door and two options.
// Read GoToScreen and ExamineRoom comments for more info

class OneDoorTwoOptions extends StatelessWidget {
  const OneDoorTwoOptions({
    super.key,
    required this.title,
    required this.imgPath,
    required this.description,
    required this.optionOneText,
    required this.optionOneRoute,
    required this.optionTwoText,
    required this.optionTwoRoute,
    required this.firstDoorText,
    required this.firstDoorRoute,
  });

  final String title;
  final String imgPath;
  final String description;
  final String optionOneText;
  final String optionOneRoute;
  final String optionTwoText;
  final String optionTwoRoute;
  final String firstDoorText;
  final String firstDoorRoute;

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
                      optionRoute: optionOneRoute, optionText: optionOneText),
                  const SizedBox(
                    height: 10,
                  ),
                  ExamineRoomButton(
                      optionRoute: optionTwoRoute, optionText: optionTwoText),
                  const SizedBox(
                    height: 10,
                  ),
                  GoToScreenButton(
                      routeManagerLocation: firstDoorRoute,
                      text: firstDoorText),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
