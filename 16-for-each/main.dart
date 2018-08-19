main(List<String> arguments) {
  List people = ['Bryan', 'Heather', 'Chris'];

  print(people);

  for(int i = 0; i < people.length; i++) {
    print('Person at ${i} is ${people[i]}');
  }

  people.forEach((String person) {
    print(person);
  });

  /* in 'for' loop you the index value as well as the list
  you are iterating but in 'forEach' you can display the
  list without the index*/
}
