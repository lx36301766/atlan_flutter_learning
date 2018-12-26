

import 'dart:math';

class Color {
  static const red =
      const Color('red'); // 一个恒定的静态变量
  final String name;      // 一个实例变量。 
  const Color(this.name); // 一个恒定的构造函数。
}

class Point {
  num x;
  num y;
  Point(this.x, this.y);

  static num distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

main() {
  assert(Color.red.name == 'red');


  var a = new Point(2, 2);
  var b = new Point(4, 4);
  var distance = Point.distanceBetween(a, b);
  assert(distance < 2.9 && distance > 2.8);
}
