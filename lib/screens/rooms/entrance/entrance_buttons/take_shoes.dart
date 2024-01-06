import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/screens/rooms/entrance/entrance_examination.dart';
import 'package:flutter/material.dart';

// This button is in a separate file, since there's a lot of code.
// It is not just a normal item, since it changes the boolean for the shoes.
// The boolean is there, since you lose the shoes when you give them to the dog,
// and I didn't want them to show up again.

class TakeShoes extends StatelessWidget {
  const TakeShoes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        shoesTaken = true;
        pickedUpItems.add(
          Item(
            title: 'Shoes',
            description:
                'The shoes are too big for you. They have chewing marks on them.',
          ),
        );
        Navigator.pop(context);
      },
      child: const Text('Take the shoes'),
    );
  }
}
