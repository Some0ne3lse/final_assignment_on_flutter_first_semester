// import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
// import 'package:final_assignment_on_flutter/buttons/takeItem.dart';
// import 'package:final_assignment_on_flutter/buttons/tryItem.dart';
// import 'package:flutter/material.dart';
//
// Doesn't work due to boolean
//
// class OneItemExamination extends StatelessWidget {
//   const OneItemExamination({
//     super.key,
//     required this.image,
//     required this.examinationText,
//     required this.itemTaken,
//     required this.item,
//     required this.itemDescription,
//     required this.itemAction,
//     required this.interactWithItem,
//     required this.leaveItem,
//     required this.location,
//   });
//
//   final String image;
//   final String examinationText;
//   final bool itemTaken;
//   final String item;
//   final String itemDescription;
//   final String itemAction;
//   final String interactWithItem;
//   final String leaveItem;
//   final String location;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 30,
//           ),
//           Image.asset(
//             image,
//             width: 200,
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           SizedBox(
//             width: 300,
//             child: Text(
//               style: const TextStyle(color: Colors.white, fontSize: 15),
//               examinationText,
//             ),
//           ),
//           const SizedBox(
//             height: 50,
//           ),
//           TakeItem(
//               itemTaken: itemTaken,
//               item: item,
//               itemDescription: itemDescription,
//               itemAction: itemAction),
//           TryItem(
//               itemDescription: itemDescription,
//               interactWithItem: interactWithItem),
//           GoBackFromItem(location: location, leaveItem: leaveItem),
//         ],
//       ),
//     );
//   }
// }
