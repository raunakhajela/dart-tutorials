import 'package:learn_dart/myclass.dart';

main(List<String> arguments) {
  //dart prefers one type of constructor and we don't have any destructor
  //dart already does garbage collection and is very fast unlike other languages which have error prone garbage collection since you have to do it manually
  Animal cat = new Animal('bob');
  Animal dog = new Animal('frank');

  cat.sayHello();
  dog.sayHello();

}