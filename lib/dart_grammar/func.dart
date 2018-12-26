

// 可选命名参数
enable(String abc, {bool bold: true, bool hidden:false}) {
}

// 可选位置参数
enable2(String abc, [bool bold, String bef = "ccc"]) {
  print("bold=$bold");
  print("bef=$bef");
}

main(List<String> args) {
  enable("");
  enable("", hidden: true);
  enable2("");
  enable2("", true, "rrf");
}


var topLevel = true;

scope() {
  var indideMain = true;
     myFunction() {
         var insideFunction = true;
         nestedFunction() {
             var insideNestedFunction = true;
             assert(topLevel);
            //  assert(insideMain);
             assert(insideFunction);
             assert(insideNestedFunction);
        }
    }
}

bre() {
  var a = 1;
  switch(a) {
    case 1:
      print("object");
      continue abc;
    abc:
    case 2:
      print("object");
  }
}