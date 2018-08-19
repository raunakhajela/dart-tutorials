main(List<String> arguments) {

  int age = 17;

  if(age == 43) print('You are 43 years old');
  if(age != 43) print('You are not 43 years old');

  if(age < 18) {
    print('You are a minor');
    if(age < 13) print('You are not even a teenager');
  }

  if(age > 65) {
    print('You are a senior');
    if(age > 102) print('Yo are lucky to be alive');
  }

  if(age == 21) {
    print('This is your special year');
  } else {
    print('This is just a normal year');
    if(age < 21) {
      print('You are a minor');
    } else {
      print('You are an adult');
    }
  }
}
