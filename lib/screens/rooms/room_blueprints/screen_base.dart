import 'package:flutter/material.dart';

// This is just for the top part of room examinations. It took a lot of space,
// so I made it into it's own class. There is no bottomBar in room examinations.

class ScreenBase extends StatelessWidget {
  const ScreenBase({
    super.key,
    required this.mainContent,
    required this.locationName,
  });

  final Widget mainContent;
  final String locationName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(locationName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            mainContent,
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
