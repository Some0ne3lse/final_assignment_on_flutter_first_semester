import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bedroom_buttons/take_book.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bedroom_buttons/take_hand.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/nothing_of_interest.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

// I wanted different options for what you can do, depending on what items
// you've picked up. Therefore there 6 different versions of this examination.

// This bool makes sure that the book doesn't show up again after inserting it
// in the mechanism in the basement

bool bookTaken = false;

class DeadBob extends StatelessWidget {
  const DeadBob({super.key});

  @override
  Widget build(BuildContext context) {
    // Here I had issues with just using
    // pickedUpItems.any((item) => item.title == item)
    // so I made it into booleans, so I could also check if an item is not there
    bool sawTaken;
    bool handTaken;
    String sawCheck = 'Saw';
    String handCheck = 'Hand';
    if (pickedUpItems.any((item) => item.title == sawCheck)) {
      sawTaken = true;
    } else {
      sawTaken = false;
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
            ImageAndText(
              image: 'assets/images/bob_censored.png',
              text: bobKilled(),
            ),
            const SizedBox(
              height: 50,
            ),
            const TakeHand(),
            const SizedBox(
              height: 10,
            ),
            const TakeBook(),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.bedroom,
                text: 'Leave the book and poor man alone'),
          ],
        ),
      );
    } else if (bookTaken == true && handTaken == false && sawTaken == true) {
      mainContent = Center(
        child: Column(
          children: [
            ImageAndText(
              image: 'assets/images/bob_censored.png',
              text: bobKilled(),
            ),
            const SizedBox(
              height: 50,
            ),
            const TakeHand(),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.bedroom,
                text: 'Leave the poor man alone'),
          ],
        ),
      );
    } else if (bookTaken == false && handTaken == true && sawTaken == true) {
      mainContent = Center(
        child: Column(
          children: [
            ImageAndText(
              image: 'assets/images/bob_censored.png',
              text: bobKilled(),
            ),
            const SizedBox(
              height: 50,
            ),
            const TakeBook(),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.bedroom,
                text: 'Leave the book'),
          ],
        ),
      );
    } else if (bookTaken == false && handTaken == false && sawTaken == false) {
      mainContent = Center(
        child: Column(
          children: [
            ImageAndText(
              image: 'assets/images/bob_censored.png',
              text: bobKilled(),
            ),
            const SizedBox(
              height: 50,
            ),
            const TakeBook(),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.bedroom,
                text: 'Leave the book'),
          ],
        ),
      );
    } else if (bookTaken == true && handTaken == false && sawTaken == false) {
      mainContent = const Center(
        child: SizedBox(
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
      mainContent = const NothingOfInterest();
    } else {
      mainContent = const Text('error');
    }
    return ScreenBase(mainContent: mainContent, locationName: 'Bob');
  }
}
