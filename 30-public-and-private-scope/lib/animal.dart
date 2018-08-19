class Animal {

  String _name = '';
  int _age = 0;
  String breed = '';

  Animal(String name, int age, String breed) {
    this._name = name;
    _age = age;
    this.breed = breed;
  }

  void sayHello() => print('Hello my name if ${_name} I am ${_age} years old, and I am a ${breed}');

  void _display(String message) => print('message ${message}');

  void saySomething(String message) => _display(message);
}