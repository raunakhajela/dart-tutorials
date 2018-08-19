main(List<String> arguments) {

  int value;
  int init = 1;
  int max = 5;

  value = init;

  do {
    print('Value in do loop is ${value}');
    value++;
  }while(value <= max);

  print('Done with do loop');

  value = init;

  while (value <= max) {
    print('Value in while loop is ${value}');
    value++;
  }
  print('Done with while loop');

  //Infinate loop
  value = init;
  do{
    print('Value = ${value}');
    value++;

    if(value == 3) {
      print('Value is 3');
      continue;
    }

    if(value > 5) {
      print('Value is greater than 5');
      break;
    }

  }while(true);

  print('Finished');
}
