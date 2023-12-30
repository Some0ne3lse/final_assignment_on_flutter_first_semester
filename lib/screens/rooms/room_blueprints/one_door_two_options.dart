import 'package:final_assignment_on_flutter/buttons/bottom_bar.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:flutter/material.dart';

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
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(optionOneRoute);
                    },
                    child: Text(optionOneText),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(optionTwoRoute);
                    },
                    child: Text(optionTwoText),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          firstDoorRoute, (Route<dynamic> route) => false);
                    },
                    child: Text(firstDoorText),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
