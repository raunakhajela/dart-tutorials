main(List<String> arguments) {
  List<int> numbers = new List<int>();
  numbers.addAll([1,2,3,4]);
  print(numbers);

  List<String> strings = new List<String>();
  strings.addAll(['a',  'b', 'c']);
  print(strings);

  add<int>(1, 2);
  add<double>(1.0, 2.09);
  add<String>('hello ', 'world');

  addNumbers<int>(1, 2);
  addNumbers<double>(1.0, 2.09);
  addNumbers<String>('hello ', 'world');
}

//Simple Example
// T is just a placeholder and means you can use any type here
void add<T>(T a, T b) {
  print(a + b);
}

//More complex
void addNumbers<T extends num>(T a, T b) {
  print(a + b);
}
