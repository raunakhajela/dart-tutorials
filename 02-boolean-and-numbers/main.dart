main(List<String> arguments) {
  bool isOn;
  bool isDog = false;
  print(isOn);
  
  //numbers
  num age = 0; //no error it accepts all types of numbers
  
  //int
  int people = 6; //error if you add a decimal
  
  //double
  double temp = 32.6; //error if you make it int
  
  //parse an int
  int test = int.parse('12'); //error if you parse a decimal
  print(test);

  int err = int.parse('12.09', onError: (source) => 0);
  print('err = ${err}');

  //math
  int dogyears = 7;
  int dogage = age * dogyears;
  print('Your age in dog years is: ${dogage}');
}
