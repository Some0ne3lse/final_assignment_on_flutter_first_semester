import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/buttons/take_item.dart';
import 'package:final_assignment_on_flutter/buttons/try_item.dart';
import 'package:flutter/material.dart';

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
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            image,
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(color: Colors.white, fontSize: 15),
              examinationText,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TakeItem(
              item: item,
              itemDescription: itemDescription,
              takeAction: takeAction),
          TryItem(
              itemDescription: itemDescription,
              interactWithItem: interactWithItem),
          GoBackFromItem(
              routeManagerLocation: routeManagerLocation,
              leaveItemText: leaveItemText),
        ],
      ),
    );
  }
}
