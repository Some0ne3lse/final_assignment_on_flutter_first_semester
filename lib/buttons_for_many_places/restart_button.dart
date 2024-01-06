import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/basement/basement_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bedroom_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bob_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/dead_bob.dart';
import 'package:final_assignment_on_flutter/screens/rooms/entrance/entrance_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/hall/hall.dart';
import 'package:flutter/material.dart';

// This button is just for restarting the app.

class RestartButton extends StatelessWidget {
  const RestartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(foregroundColor: Colors.white),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: const Text(
                'Are you sure you want to Restart? All data will be cleared.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('NO!'),
              ),
              // The TextButton below resets all booleans and empties the
              // inventory. Then it sends you to the start screen.
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      RouteManager.startScreen,
                      (Route<dynamic> route) => false);
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
                child: const Text('YES!'),
              ),
            ],
          ),
        );
      },
      child: const Row(
        children: [
          Text('Restart'),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.exit_to_app),
        ],
      ),
    );
  }
}
