

// class Musician extends Performer with Musical {
//   // ...
// }

// class Maestro extends Person with Musical, Aggressive, Demented {
//   Maestro(String maestroName) {
//     name = maestroName;
//     canConduct = true;
//   }
// }

abstract class Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}