import 'feline.dart';
import 'dragon.dart';
import 'ghost.dart';

/*
* mixins is a type of multiple inheritence
* */
class Monster extends Feline with Ghost, Dragon {

  bool glowInDark = true;

  @override
  void test() {
    print('Test called in Monster');
    super.test();
  }
}