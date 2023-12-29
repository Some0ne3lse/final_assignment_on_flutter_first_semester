import 'package:final_assignment_on_flutter/buttons/take_hand.dart';
import 'package:final_assignment_on_flutter/buttons/take_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/nothing_of_interest.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

class DeadBob extends StatelessWidget {
  const DeadBob({super.key});

  @override
  Widget build(BuildContext context) {
    bool sawTaken;
    bool handTaken;
    bool bookTaken;
    String sawCheck = 'Saw';
    String bookCheck = 'Book';
    String handCheck = 'Hand';
    if (pickedUpItems.any((item) => item.title == sawCheck)) {
      sawTaken = true;
    } else {
      sawTaken = false;
    }
    if (pickedUpItems.any((item) => item.title == bookCheck)) {
      bookTaken = true;
    } else {
      bookTaken = false;
    }
    if (pickedUpItems.any((item) => item.title == handCheck)) {
      handTaken = true;
    } else {
      handTaken = false;
    }
    Widget mainContent;
    if (bookTaken == false && handTaken == false && sawTaken == true) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/bob_censored.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                bobKilled(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TakeHand(),
            TakeItem(
              item: 'Book',
              itemDescription: 'It\'s a book filled with recipes for cakes.',
              takeAction: 'Take the book',
            ),
          ],
        ),
      );
    } else if (bookTaken == true && handTaken == false && sawTaken == true) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/bob_censored.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                bobKilled(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TakeHand(),
          ],
        ),
      );
    } else if (bookTaken == false && handTaken == true && sawTaken == true) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/bob_censored.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                bobKilled(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TakeItem(
              item: 'Book',
              itemDescription: 'It\'s a book filled with recipes for cakes.',
              takeAction: 'Take the book',
            ),
          ],
        ),
      );
    } else if (bookTaken == false && handTaken == false && sawTaken == false) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/bob_censored.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                bobKilled(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TakeItem(
              item: 'Book',
              itemDescription: 'It\'s a book filled with recipes for cakes.',
              takeAction: 'Take the book',
            ),
          ],
        ),
      );
    } else if (bookTaken == true && handTaken == false && sawTaken == false) {
      mainContent = Center(
        child: const SizedBox(
          width: 300,
          child: Text(
            'You find nothing else of value... For now',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      );
    } else if (bookTaken == true && handTaken == true && sawTaken == true) {
      mainContent = NothingOfInterest();
    } else {
      mainContent = const Text('error');
    }
    return ScreenBase(mainContent: mainContent, locationName: 'Bob');
  }
}
