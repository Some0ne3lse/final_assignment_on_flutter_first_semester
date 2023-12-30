import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}
