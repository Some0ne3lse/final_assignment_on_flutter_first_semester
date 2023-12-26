import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/buttons/tryItem.dart';
import 'package:flutter/material.dart';

class OneNoteExamination extends StatelessWidget {
  const OneNoteExamination({
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
              examinationText,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TryItem(
              itemDescription: itemDescription,
              interactWithItem: interactWithItem),
          GoBackFromItem(
              routeManagerLocation: routeManagerLocation,
              leaveItemText: leaveItemText)
        ],
      ),
    );
  }
}
