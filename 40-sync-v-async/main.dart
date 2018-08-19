import 'dart:io';

main(List<String> arguments) {

  String path = 'C:\\';
  Directory dir = new Directory(path);

  if(dir.existsSync()) { // checking if directory exists or not
    print('exists');
  }
  else {
    print('not found');
  }

}
