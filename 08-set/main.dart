main(List<String> arguments) {
  //Set = unordered, do not contain duplicates

  Set<int> numbers = new Set<int>();
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(1); //added twice
  print(numbers);
}
