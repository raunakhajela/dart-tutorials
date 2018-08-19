class Animal {

  // static shares all instances of a class doesn't matter it's 1 or 2 cz all share same
  static int _counter = 0;

  Animal() {
    _counter++;
    print('There are ${_counter} of us');
  }

  static void speak() {
    print('speaking');
    run();
  }

  static void run() {
    print('running');
  }
}