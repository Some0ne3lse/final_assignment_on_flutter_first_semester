import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/screens/arrival.dart';
import 'package:final_assignment_on_flutter/screens/bad_endings/cry_ending.dart';
import 'package:final_assignment_on_flutter/screens/bad_endings/give_up_on_life_bob.dart';
import 'package:final_assignment_on_flutter/screens/bad_endings/give_up_on_life_no_axe.dart';
import 'package:final_assignment_on_flutter/screens/bad_endings/monster_ending.dart';
import 'package:final_assignment_on_flutter/screens/bad_endings/pet_dog_ending.dart';
import 'package:final_assignment_on_flutter/screens/bad_endings/run_away_from_bob.dart';
import 'package:final_assignment_on_flutter/screens/good_endings/give_up_on_life.dart';
import 'package:final_assignment_on_flutter/screens/good_endings/got_the_cake.dart';
import 'package:final_assignment_on_flutter/screens/introduction.dart';
import 'package:final_assignment_on_flutter/screens/rooms/basement/basement.dart';
import 'package:final_assignment_on_flutter/screens/rooms/basement/basement_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bedroom.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bedroom_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bob_attack.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bob_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/entrance/entrance.dart';
import 'package:final_assignment_on_flutter/screens/rooms/entrance/entrance_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/garden/dog.dart';
import 'package:final_assignment_on_flutter/screens/rooms/garden/garden.dart';
import 'package:final_assignment_on_flutter/screens/rooms/giant_safe/giant_safe.dart';
import 'package:final_assignment_on_flutter/screens/rooms/giant_safe/password_terminal.dart';
import 'package:final_assignment_on_flutter/screens/rooms/hall/hall.dart';
import 'package:final_assignment_on_flutter/screens/rooms/hidden_room/hidden_room.dart';
import 'package:final_assignment_on_flutter/screens/rooms/hidden_room/hidden_room_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/kennel/kennel.dart';
import 'package:final_assignment_on_flutter/screens/rooms/kennel/kennel_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/kitchen/kitchen.dart';
import 'package:final_assignment_on_flutter/screens/rooms/kitchen/kitchen_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/library/library.dart';
import 'package:final_assignment_on_flutter/screens/rooms/library/library_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/living_room/living_room.dart';
import 'package:final_assignment_on_flutter/screens/rooms/main_hall/main_hall.dart';
import 'package:final_assignment_on_flutter/screens/rooms/main_hall/main_hall_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/storage/storage.dart';
import 'package:final_assignment_on_flutter/screens/rooms/storage/storage_examination.dart';
import 'package:final_assignment_on_flutter/screens/start_screen.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String startScreen = '/';
  static const String introduction = '/introduction';
  static const String arrival = '/arrival';
  static const String cryEnding = '/cryEnding';
  static const String petDogEnding = '/petDogEnding';
  static const String giveUpOnLifeDogNoAxe = '/giveUpOnLifeDogNoAxe';
  static const String giveUpOnLifeDog = '/giveUpOnLifeDog';
  static const String monster = '/monster';
  static const String runAwayFromBob = '/runAwayFromBob';
  static const String giveUpOnLifeBob = '/giveUpOnLifeBob';
  static const String gotTheCake = '/gotTheCake';
  static const String inventory = '/inventory';
  static const String entrance = '/entrance';
  static const String entranceExamination = '/entranceExamination';
  static const String kitchen = '/kitchen';
  static const String kitchenExamination = '/kitchenExamination';
  static const String storage = '/storage';
  static const String storageExamination = '/storageExamination';
  static const String library = '/library';
  static const String libraryExamination = '/libraryExamination';
  static const String mainHall = '/mainHall';
  static const String mainHallExamination = '/mainHallExamination';
  static const String hall = '/hall';
  static const String livingRoom = '/livingRoom';
  static const String garden = '/garden';
  static const String basement = '/basement';
  static const String basementExamination = '/basementExamination';
  static const String hiddenRoom = '/hiddenRoom';
  static const String hiddenRoomExamination = '/hiddenRoomExamination';
  static const String dog = '/dog';
  static const String kennel = '/kennel';
  static const String kennelExamination = '/kennelExamination';
  static const String bedroom = '/bedroom';
  static const String bedroomExamination = '/bedroomExamination';
  static const String bobExamination = '/bobExamination';
  static const String giantSafe = '/giantSafe';
  static const String passwordTerminal = '/passwordTerminal';
  static const String bobAttack = '/bobAttack';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case startScreen:
        return MaterialPageRoute(
          builder: (context) => const StartScreen(),
        );
      case introduction:
        return MaterialPageRoute(
          builder: (context) => const Introduction(),
        );
      case inventory:
        return MaterialPageRoute(
          builder: (context) => const Inventory(),
        );
      case arrival:
        return MaterialPageRoute(
          builder: (context) => const Arrival(),
        );
      case cryEnding:
        return MaterialPageRoute(
          builder: (context) => const CryEnding(),
        );
      case petDogEnding:
        return MaterialPageRoute(
          builder: (context) => const PetDogEnding(),
        );
      case giveUpOnLifeDogNoAxe:
        return MaterialPageRoute(
          builder: (context) => const GiveUpOnLifeDogNoAxe(),
        );
      case giveUpOnLifeDog:
        return MaterialPageRoute(
          builder: (context) => const GiveUpOnLife(),
        );
      case monster:
        return MaterialPageRoute(
          builder: (context) => const Monster(),
        );
      case runAwayFromBob:
        return MaterialPageRoute(
          builder: (context) => const RunAwayFromBob(),
        );
      case giveUpOnLifeBob:
        return MaterialPageRoute(
          builder: (context) => const GiveUpOnLifeBob(),
        );
      case gotTheCake:
        return MaterialPageRoute(
          builder: (context) => const GotTheCake(),
        );
      case entrance:
        return MaterialPageRoute(
          builder: (context) => const Entrance(),
        );
      case entranceExamination:
        return MaterialPageRoute(
          builder: (context) => const EntranceExamination(),
        );
      case kitchen:
        return MaterialPageRoute(
          builder: (context) => const Kitchen(),
        );
      case kitchenExamination:
        return MaterialPageRoute(
          builder: (context) => const KitchenExamination(),
        );
      case storage:
        return MaterialPageRoute(
          builder: (context) => const Storage(),
        );
      case storageExamination:
        return MaterialPageRoute(
          builder: (context) => const StorageExamination(),
        );
      case library:
        return MaterialPageRoute(
          builder: (context) => const Library(),
        );
      case libraryExamination:
        return MaterialPageRoute(
          builder: (context) => const LibraryExamination(),
        );
      case mainHall:
        return MaterialPageRoute(
          builder: (context) => const MainHall(),
        );
      case mainHallExamination:
        return MaterialPageRoute(
          builder: (context) => const MainHallExamination(),
        );
      case hall:
        return MaterialPageRoute(
          builder: (context) => const Hall(),
        );
      case livingRoom:
        return MaterialPageRoute(
          builder: (context) => const LivingRoom(),
        );
      case garden:
        return MaterialPageRoute(
          builder: (context) => const Garden(),
        );
      case dog:
        return MaterialPageRoute(
          builder: (context) => Dog(),
        );
      case basement:
        return MaterialPageRoute(
          builder: (context) => const Basement(),
        );
      case basementExamination:
        return MaterialPageRoute(
          builder: (context) => const BasementExamination(),
        );
      case hiddenRoom:
        return MaterialPageRoute(
          builder: (context) => const HiddenRoom(),
        );
      case hiddenRoomExamination:
        return MaterialPageRoute(
          builder: (context) => const HiddenRoomExamination(),
        );
      case kennel:
        return MaterialPageRoute(
          builder: (context) => const Kennel(),
        );
      case kennelExamination:
        return MaterialPageRoute(
          builder: (context) => const KennelExamination(),
        );
      case bedroom:
        return MaterialPageRoute(
          builder: (context) => const Bedroom(),
        );
      case bedroomExamination:
        return MaterialPageRoute(
          builder: (context) => const BedroomExamination(),
        );
      case bobExamination:
        return MaterialPageRoute(
          builder: (context) => const BobExamination(),
        );
      case bobAttack:
        return MaterialPageRoute(
          builder: (context) => const BobAttack(),
        );
      case giantSafe:
        return MaterialPageRoute(
          builder: (context) => const GiantSafe(),
        );
      case passwordTerminal:
        return MaterialPageRoute(
          builder: (context) => PasswordTerminal(),
        );

      default:
        throw const FormatException('Route not found!');
    }
  }
}
