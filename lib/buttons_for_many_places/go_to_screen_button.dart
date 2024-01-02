import 'package:flutter/material.dart';

class GoToScreenButton extends StatelessWidget {
  const GoToScreenButton({
    super.key,
    required this.doorRoute,
    required this.doorText,
  });

  final String doorRoute;
  final String doorText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamedAndRemoveUntil(
            doorRoute, (Route<dynamic> route) => false);
      },
      child: Text(doorText),
    );
  }
}
