import 'mamal.dart';

class Feline extends Mamal {

  bool hasClaws = true;

  void growl() => print('grrrrr');

  @override
  void test() {
    print('testing in feline');
    super.test();
  }

}