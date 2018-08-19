import 'package:learn_dart/animal.dart';
main(List<String> arguments) {

  Animal dog = new Animal('Choco', 6);
  dog.name = 'fiddo'; //setter
  print(dog.name); // getter

  print('Before setter ${dog.age}'); //getter
  dog.age = 4; //setter
  print('After setter ${dog.age}'); //getter
}