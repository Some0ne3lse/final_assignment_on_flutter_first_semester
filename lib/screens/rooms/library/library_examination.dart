import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/one_item_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/notes/notes.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

// No booleans here so OneItemExamination used

class LibraryExamination extends StatelessWidget {
  const LibraryExamination({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      mainContent: OneItemExamination(
        image: 'assets/images/library_note.png',
        examinationText: libraryExamination(),
        itemDescription: basementNote(),
        interactWithItem: 'Read the note',
        routeManagerLocation: RouteManager.library,
        leaveItemText: 'Leave the note',
      ),
      locationName: 'Library',
    );
  }
}
