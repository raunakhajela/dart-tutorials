main(List<String> arguments) {
  
  String hello = 'hello world';
  String name = 'Raunak Hajela';
  print('Hello ${name}');
  
  //get a substring
  String firstname = name.substring(0,7);
  print('firstname = ${firstname}');

  //get the index of a string
  int index = name.indexOf(' ');
  String lastname = name.substring(index).trim();
  print('lastname = ${lastname}');

  //length
  print(name.length);

  //contains
  print(name.contains('#'));

  //create a list
  List parts = name.split(' ');
  print(parts);
  print(parts[0]);
  print(parts[1]);
}
