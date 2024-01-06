import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/try_item.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:flutter/material.dart';

// This is the blueprint for rooms with only one item to examine

class OneItemExamination extends StatelessWidget {
  const OneItemExamination({
    super.key,
    required this.image,
    required this.examinationText,
    required this.itemDescription,
    required this.interactWithItem,
    required this.routeManagerLocation,
    required this.leaveItemText,
  });

  final String image;
  final String examinationText;
  final String itemDescription;
  final String interactWithItem;
  final String routeManagerLocation;
  final String leaveItemText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ImageAndText(image: image, text: examinationText),
          const SizedBox(
            height: 50,
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
