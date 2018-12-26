import 'dart:io';

void main() {
  foo();
  bar();
}

void bar() {
  var file = File('path-to-your-file');
  file.exists()
      .then((exists) => print('bar: file ${exists ? 'exists' : 'not exists'}'))
      .catchError((e) => print(e));
  print('bar: after file.exists() returned');
}

void foo() async {
  var file = File('path-to-your-file');
  try {
    var exists = await file.exists();
    print('bar: file ${exists ? 'exists' : 'not exists'}');
    print('bar: after file.exists() returned');
  } catch (e) {
    print(e);
  }
}
