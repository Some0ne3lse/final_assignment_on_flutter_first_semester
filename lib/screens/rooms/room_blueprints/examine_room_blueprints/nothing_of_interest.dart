import 'package:flutter/material.dart';

// This is the screen that shows up everytime the room is empty.

class NothingOfInterest extends StatelessWidget {
  const NothingOfInterest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 300,
        child: Text(
          'You find nothing else of value...',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
