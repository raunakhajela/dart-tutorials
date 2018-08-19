main(List<String> arguments) {
  //Map = key value pair

  //Map people = {'dad' : 'Bryan', 'son' : 'Chris', 'daughter' : 'Heather'};

  Map<String, String> people = new Map<String, String>();
  people.putIfAbsent('dad', () => 'Bryan');
  //people.putIfAbsent('son', () => 'Bryan');
  //people.putIfAbsent('daughter', () => 'Bryan');

  print(people);
  print('Keys are ${people.keys}');
  print('Values are ${people.values}');
  print('Dad is ${people['dad']}');
  print('Son is ${people['son']}');
}
