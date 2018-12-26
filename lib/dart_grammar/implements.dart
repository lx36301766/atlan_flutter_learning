// 一个 person ，包含 greet() 的隐式接口。
class Person {
  // 在这个接口中，只有库中可见。
  final name;

  // 不在接口中，因为这是个构造函数。
  Person(this.name);

  // 在这个接口中。
  String greet(who) => 'Hello, $who. I am $name.';
}

//  Person 接口的一个实现。
class Imposter implements Person {

  // 我们不得不定义它，但不用它。
  final name = "";

  String greet(who) => 'Hi $who. Do you know who I am?';
}

greetBob(Person person) => person.greet('bob');

main() {
  print(greetBob(new Person('kathy')));
  print(greetBob(new Imposter()));
}
