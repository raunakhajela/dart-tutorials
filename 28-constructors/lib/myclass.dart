class Animal {
  String _name ='';

  /* changing default constructor, constructor are useful to pass
  information in a class */
  /*
  Animal() {
    print('constructed');
    _name = 'sam';
  }
  */

  Animal(String name) {
    print('constructor fired');
    _name = name;
  }

  void sayHello() {
    if(_name.isEmpty) {
      print('Hello');
    }
    else {
      print('Hello ${_name} nice to meet you');
    }
  }
}
