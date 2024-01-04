import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/basement/basement_examination.dart';
import 'package:flutter/material.dart';

// This is the button for inserting the book in the mechanism if you have it
// It's a separate file since it takes up a lot of space.

class InsertBook extends StatelessWidget {
  const InsertBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        hiddenDoorFound = true;
        pickedUpItems
            .removeWhere((pickedUpItems) => pickedUpItems.title == 'Book');
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: const Text('With a click a hidden door opens'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      RouteManager.basement, (Route<dynamic> route) => false);
                },
                child: const Text('Okay!'),
              ),
            ],
          ),
        );
      },
      child: const Text('Insert the recipe book into the mechanism'),
    );
  }
}
