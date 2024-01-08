import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/take_item.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/try_item.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:flutter/material.dart';

// This is the blueprint for only one item to pick up when there is no boolean

class OneItemToPickUp extends StatelessWidget {
  const OneItemToPickUp({
    super.key,
    required this.image,
    required this.examinationText,
    required this.item,
    required this.itemDescription,
    required this.takeAction,
    required this.interactWithItem,
    required this.leaveItemText,
    required this.routeManagerLocation,
  });

  final String image;
  final String examinationText;
  final String item;
  final String itemDescription;
  final String takeAction;
  final String interactWithItem;
  final String leaveItemText;
  final String routeManagerLocation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ImageAndText(
            image: image,
            text: examinationText,
          ),
          const SizedBox(
            height: 50,
          ),
          TakeItem(
              item: item,
              itemDescription: itemDescription,
              takeAction: takeAction),
          const SizedBox(
            height: 10,
          ),
          TryItem(
              itemDescription: itemDescription,
              interactWithItem: interactWithItem),
          const SizedBox(
            height: 10,
          ),
          GoToScreenButton(
              routeManagerLocation: routeManagerLocation, text: leaveItemText),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
