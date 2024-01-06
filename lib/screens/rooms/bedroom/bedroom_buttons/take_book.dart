import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/dead_bob.dart';
import 'package:flutter/material.dart';

// This button is in a separate file, since there's a lot of code.
// It is not just a normal item, since it changes the boolean for the book.
// The boolean is there, since you lose the book when you add them to the
// hidden mechanism, and I didn't want them to show up again.

class TakeBook extends StatelessWidget {
  const TakeBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        bookTaken = true;
        pickedUpItems.add(
          Item(
              title: 'Book',
              description: 'It\'s a book filled with recipes for cakes.'),
        );
        Navigator.pop(context);
      },
      child: const Text('Take the book'),
    );
  }
}
