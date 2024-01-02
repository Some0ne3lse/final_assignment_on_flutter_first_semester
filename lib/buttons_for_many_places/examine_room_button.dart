import 'package:flutter/material.dart';

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
