
library my_lib;

// import 'package:lib1/lib1.dart';
// import 'package:lib2/lib2.dart' as lib2;
// // ...
// var element1 = new Element(); // 使用lib1里的元素
// var element2 =
//     new lib2.Element();       // 使用lib2里的元素



// // 只导入foo库
// import 'package:lib1/lib1.dart' show foo;

// //导入所有除了foo
// import 'package:lib2/lib2.dart' hide foo;



// 为了延迟加载一个库，你必须使用 deferred as 先导入它。
// import 'package:deferred/hello.dart' deferred as hello;

// 当需要库时，使用该库的调用标识符调用 LoadLibrary（）。
// greet() async {
//   await hello.loadLibrary();
//   hello.printGreeting();
// }

// 当您使用延迟加载，请记住以下内容：

//  1.延迟库的常量在其作为导入文件时不是常量。记住，这些常量不存在，直到迟库被加载完成。
//  2.你不能在导入文件中使用延迟库常量的类型。相反，考虑将接口类型移到同时由延迟库和导入文件导入的库。
//  3.Dart隐含调用LoadLibrary（）插入到定义deferred as namespace。在调用LoadLibrary（）函数返回一个Future。