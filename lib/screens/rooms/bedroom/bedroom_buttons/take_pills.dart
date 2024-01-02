import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bedroom_examination.dart';
import 'package:flutter/material.dart';

class TakePills extends StatelessWidget {
  const TakePills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        pillsTaken = true;
        pickedUpItems.add(
          Item(
            title: 'Sleeping-Pills',
            description:
                'The pill description reads as follows: Very strong sleeping pills. Works on both animals and humans.',
          ),
        );
        Navigator.pop(context);
      },
      child: const Text('Take the sleeping-pills'),
    );
  }
}
