main(List<String> arguments) {

  //Functions that do not list a name or a return type

  (){print('hello');};

  List people = ['Bryan', 'Heather', 'Chris'];

  people.forEach(print);

  print('----------');
  people.forEach((String name){
    print(name);
  });

  print('----------');

  people.where((String name){
    switch(name){
      case 'Chris':
        return true;
      case 'Bryan':
        return false;
      case 'Heather':
        return true;
    }
  }).forEach(print);

}
