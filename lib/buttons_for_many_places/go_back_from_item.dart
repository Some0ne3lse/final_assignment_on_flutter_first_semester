import 'package:flutter/material.dart';

class GoBackFromItem extends StatelessWidget {
  const GoBackFromItem({
    super.key,
    required this.routeManagerLocation,
    required this.leaveItemText,
  });

  final String routeManagerLocation;
  final String leaveItemText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamedAndRemoveUntil(
            routeManagerLocation, (Route<dynamic> route) => false);
      },
      child: Text(leaveItemText),
    );
  }
}
