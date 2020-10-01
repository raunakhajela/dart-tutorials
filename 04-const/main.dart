main(List<String> arguments) {
  String hello = 'hello';

  // using const keyword:
  const String world = 'World';
  // world = 'Bryan';                       // Error: const keyword represents the compile-time constant
  print(hello + ' ' + world);

  // using final keyword:
  final world1 = 'World';
  // world1 = 'Bryan';                       // Error: a final variable can only be set once.
  print("$hello $world1");
}
