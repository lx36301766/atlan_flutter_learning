

main(List<String> args) {
  
  var person = Person.initArgs(123, "sas");
  
  var person2 = Person()..age = 2..name = "lx";

}

class Person {

  int age;
  String name;

  // 默认构造函数
  Person();

  // 命名构造函数
  Person.initArgs(this.age, this.name);

  Person.fromJson(Map data): age = data["age"], name = data["name"];


  setAge(int age) {
    this.age = age;
  }

  setName(String name) {
    this.name = name;
  }

}

class Employee extends Person {

  Employee.fromJson(Map data): super.fromJson(data);

  Employee(): super();

}

class ImmutablePerson {

  final num x;
  final num y;

  const ImmutablePerson(this.x, this.y);
}

// 这个类是抽象类，因此不能被实例化。
abstract class AbstractContainer {
  // ...定义构造函数，域，方法...

  void updateChildren(); // 抽象方法。
}

class SpecializedContainer extends AbstractContainer {
  // ...定义更多构造函数，域，方法...

  void updateChildren() {
    // ...实现 updateChildren()...
  }

  // 抽象方法造成一个警告，但是不会阻止实例化。
  // void doSomething();
}

class A {
  @override
  void noSuchMethod(Invocation mirror) {
    // ...
  }
}