import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/basement/basement_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bedroom_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bob_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/dead_bob.dart';
import 'package:final_assignment_on_flutter/screens/rooms/entrance/entrance_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/hall/hall.dart';
import 'package:final_assignment_on_flutter/screens/rooms/storage/storage_examination.dart';
import 'package:flutter/material.dart';

class TryAgainButton extends StatelessWidget {
  const TryAgainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamedAndRemoveUntil(
            RouteManager.startScreen, (Route<dynamic> route) => false);
        pickedUpItems.clear();
        hiddenDoorFound = false;
        dogTamed = false;
        dogSleeping = false;
        bobDead = false;
        bobSleeping = true;
        shoesTaken = false;
        handTaken = false;
        bookTaken = false;
        sawTaken = false;
        pillsTaken = false;
      },
      child: const Text('Try Again'),
    );
  }
}
