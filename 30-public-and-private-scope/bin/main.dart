import 'package:learn_dart/animal.dart';
main(List<String> arguments) {

  Animal cat = new Animal('fluffy', 16, 'Short Hair');

  cat.breed = 'mixed';
  //cat._name = "muffin"; // can't access it is private variable
  //cat._display('hello'); // can't access it is private method
  cat.sayHello();
  cat.saySomething('meow');
}