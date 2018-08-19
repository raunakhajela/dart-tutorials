import 'animal.dart';

class Mamal extends Animal {

  bool hasHair = true;
  bool hasBackbone = true;
  bool isWarmBlooded = true;

  void walk() => print('Walking');


  void test() {
    print('testing in mamal');
    //super.test();
  }

}