main(List<String> arguments) {
  List people = ['Bryan', 'Heather', 'Chris'];

  print(people);

  print("using for loop to iterate a list");
  for (int i = 0; i < people.length; i++) {
    print('Person at ${i} is ${people[i]}');
  }

  print("using forEach loop to iterate a list");
  int i = 0;
  people.forEach((people) {
    print('Person at ${i} is ${people}');
    i++;
  });

  /* in 'for' loop you the index value as well as the list
  you are iterating but in 'forEach' you can display the
  list without the index*/
}
