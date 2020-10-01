main(List<String> arguments) {
  int age = 43;
  // age = 22;

  if (age == 43) {
    bool hasBills = false;
    print('You are 43 and has bills ${hasBills}');
  } else {
    bool hasBills = true;
    print('You are ${age} and has bills ${hasBills}');
  }
}
