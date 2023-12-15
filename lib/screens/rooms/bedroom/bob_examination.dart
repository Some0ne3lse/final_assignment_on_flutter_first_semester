import 'package:final_assignment_on_flutter/screens/rooms/bedroom/dead_bob.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/sleeping_bob.dart';
import 'package:flutter/material.dart';

bool bobSleeping = true;
bool bobDead = false;

class BobExamination extends StatelessWidget {
  const BobExamination({super.key});

  @override
  Widget build(BuildContext context) {
    if (bobDead == false) {
      return const SleepingBob();
    } else {
      return const DeadBob();
    }
  }
}
