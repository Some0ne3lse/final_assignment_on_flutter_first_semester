import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/basement/basement_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bedroom_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bob_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/dead_bob.dart';
import 'package:final_assignment_on_flutter/screens/rooms/entrance/entrance_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/hall/hall.dart';
import 'package:flutter/material.dart';

// This button, just like the restart button resets all booleans and empties the
// inventory. Then it sends you to the start screen. The only difference is the
// text on the button. I kept it separate because I found it easier to read.

class TryAgainButton extends StatelessWidget {
  const TryAgainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamedAndRemoveUntil(
            RouteManager.startScreen, (Route<dynamic> route) => false);
        pickedUpItems.clear();
        shoesTaken = false;
        bookTaken = false;
        pillsTaken = false;
        hiddenDoorFound = false;
        dogTamed = false;
        dogSleeping = false;
        bobDead = false;
        bobSleeping = true;
      },
      child: const Text('Try Again'),
    );
  }
}
