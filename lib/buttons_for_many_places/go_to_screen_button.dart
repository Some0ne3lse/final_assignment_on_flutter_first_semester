import 'package:flutter/material.dart';

class GoToScreenButton extends StatelessWidget {
  const GoToScreenButton({
    super.key,
    required this.routeManagerLocation,
    required this.doorText,
  });

  final String routeManagerLocation;
  final String doorText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamedAndRemoveUntil(
            routeManagerLocation, (Route<dynamic> route) => false);
      },
      child: Text(doorText),
    );
  }
}
