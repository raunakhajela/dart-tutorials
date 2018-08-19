import 'package:learn_dart/animal.dart';
main(List<String> arguments) {

  Animal cat = new Animal();
  Animal dog = new Animal();
  Animal bird = new Animal();
  Animal fish = new Animal();

  Animal.run(); // it is static no need to create an instance to call it
}