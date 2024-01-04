import 'package:flutter/material.dart';

// This button is almost the same as the ExamineRoomButton. This button goes to
// a screen, but removes all previous routes, so you can't go back with the
// return button on android, or the top left swipe on iPhones

class GoToScreenButton extends StatelessWidget {
  const GoToScreenButton({
    super.key,
    required this.routeManagerLocation,
    required this.text,
  });

  final String routeManagerLocation;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamedAndRemoveUntil(
            routeManagerLocation, (Route<dynamic> route) => false);
      },
      child: Text(text),
    );
  }
}
