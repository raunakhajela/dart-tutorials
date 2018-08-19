import 'mamal.dart';

class Feline extends Mamal {

  bool hasClaws = true;

  void growl() => print('grrrrr');

  @override
  void test() {
    print('testing in feline');
    /* 'super' uses the function we are inheriting, in our case it
    is accessing the test function which is defined in mamal class and which
    we are inheriting in the feline class*/
    super.test();
  }

}