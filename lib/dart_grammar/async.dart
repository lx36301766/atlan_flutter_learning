


checkVersion() async {
  var version = await lookUpVersionSync();
  if (version == 1) {
    // Do something.
  } else {
    // Do something else.
  }
}

String lookUpVersionSync() => '1.0.0';

Future<String> lookUpVersion() async => '1.0.0';

main() {
  checkVersion();
  // print('In main: version is ${await lookUpVersion()}');
}

// main() async {
  
//   await for (var request in requestServer) {
//     handleRequest(request);
//   }
// }

