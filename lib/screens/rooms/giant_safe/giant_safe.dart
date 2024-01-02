import 'package:final_assignment_on_flutter/buttons_for_many_places/bottom_bar.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/giant_safe/giant_safe_buttons/insert_hand_and_key.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/one_door_one_option.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

class GiantSafe extends StatelessWidget {
  const GiantSafe({super.key});

  @override
  Widget build(BuildContext context) {
    String itemOneToCheck = 'Hand';
    String itemTwoToCheck = 'Golden Key';
    if ((pickedUpItems.any((item) => item.title == itemOneToCheck)) &&
        (pickedUpItems.any((item) => item.title == itemTwoToCheck))) {
      return OneDoorOneOption(
          locationName: 'Giant Safe',
          imgPath: 'assets/images/terminal.png',
          description: giantSafe(),
          optionText: 'Insert Key and Hand print',
          optionRoute: RouteManager.passwordTerminal,
          firstDoorText: 'Go to the Living Room',
          firstDoorRoute: RouteManager.livingRoom);
    } else if (pickedUpItems.any((item) => item.title == itemOneToCheck)) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Giant Safe'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    ImageAndText(
                      image: 'assets/images/terminal.png',
                      text: giantSafe(),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InsertHand(),
                    SizedBox(
                      height: 10,
                    ),
                    GoBackFromItem(
                      routeManagerLocation: RouteManager.livingRoom,
                      leaveItemText: 'Go to the Living Room',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
      );
    } else if (pickedUpItems.any((item) => item.title == itemTwoToCheck)) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Giant Safe'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    ImageAndText(
                      image: 'assets/images/terminal.png',
                      text: giantSafe(),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InsertKey(),
                    SizedBox(
                      height: 10,
                    ),
                    GoBackFromItem(
                      routeManagerLocation: RouteManager.livingRoom,
                      leaveItemText: 'Go to the Living Room',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Giant Safe'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    ImageAndText(
                      image: 'assets/images/terminal.png',
                      text: giantSafe(),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    GoBackFromItem(
                      routeManagerLocation: RouteManager.livingRoom,
                      leaveItemText: 'Go to the Living Room',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
      );
    }
  }
}
