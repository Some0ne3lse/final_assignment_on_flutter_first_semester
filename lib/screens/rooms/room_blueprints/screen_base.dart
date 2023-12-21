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
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
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
