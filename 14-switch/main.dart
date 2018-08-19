main(List<String> arguments) {

  int age = 21;

  switch(age) {
    case 18:
      print('You are 18, you can vote');
      break;

    case 21:
      print('You are 21, you are an adult');
      break;

    case 65:
      print('You are 65, you can retire');
      break;

    default:
      print('Nothing special about this age');
      break;
  }

  print('Finished');
}
