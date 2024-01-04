import 'package:final_assignment_on_flutter/buttons_for_many_places/bottom_bar.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:flutter/material.dart';

class ThreeDoorsNoOption extends StatelessWidget {
  const ThreeDoorsNoOption({
    super.key,
    required this.title,
    required this.imgPath,
    required this.description,
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
                  GoToScreenButton(
                      routeManagerLocation: firstDoorRoute,
                      doorText: firstDoorText),
                  const SizedBox(
                    height: 10,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.of(context).pushNamedAndRemoveUntil(
                  //         firstDoorRoute, (Route<dynamic> route) => false);
                  //   },
                  //   child: Text(firstDoorText),
                  // ),
                  GoToScreenButton(
                      routeManagerLocation: secondDoorRoute,
                      doorText: secondDoorText),
                  const SizedBox(
                    height: 10,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.of(context).pushNamedAndRemoveUntil(
                  //         secondDoorRoute, (Route<dynamic> route) => false);
                  //   },
                  //   child: Text(secondDoorText),
                  // ),
                  GoToScreenButton(
                      routeManagerLocation: thirdDoorRoute,
                      doorText: thirdDoorText),
                  const SizedBox(
                    height: 30,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.of(context).pushNamedAndRemoveUntil(
                  //         thirdDoorRoute, (Route<dynamic> route) => false);
                  //   },
                  //   child: Text(thirdDoorText),
                  // ),
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
