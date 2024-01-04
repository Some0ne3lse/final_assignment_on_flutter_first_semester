import 'package:flutter/material.dart';

// This is the button to examine rooms. It is different from GoToScreen,
// since we only use pushNamed instead of pushNamedAndRemoveUntil. This is so
// you can go back from the screen to the room with the button on the top left.

class ExamineRoomButton extends StatelessWidget {
  const ExamineRoomButton({
    super.key,
    required this.optionRoute,
    required this.optionText,
  });

  final String optionRoute;
  final String optionText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(optionRoute);
      },
      child: Text(optionText),
    );
  }
}
