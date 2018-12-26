

void main() {
  print("hello");
  test();
}

test () {
  int lineCount;
  String abc = "s";
  var abcd = "ss";
  final aa = "s";
  const abs= "s";

  const list = [1,2,3];
  const list2 = const [1,2,3];
  const x = 5;
  const list3 = const [x];
  // list3[0] = 2; // error
  print(list3[0]);

  String sdsd = 1.toString();
  int i = int.parse(sdsd);

  sdsd = "sad ${i+1}";
  print(sdsd);

  sdsd = '''
      asad
      dasffaf
      dfsdsf
      dfdsfdsfsfssadewf
      ''';
  sdsd = """
      asad
      dasffaf
      dfsdsf
      dfdsfdsfsfssadewf
      """;

    var s = r"In a raw string, even \n isn't special.";

  var name = "s";
  assert(name.isEmpty);
}
