import 'dart:io';

main(List<String> arguments) {

  Directory dir = Directory.current;
  print(dir.path);

  List<FileSystemEntity> list = dir.listSync(recursive: true);
  print('Entries in list: ${list.length}');

  list.forEach((FileSystemEntity value){

    FileStat stat = value.statSync();
    // stat is a special type of variable which uses operating system variables to show modified files
    // value object shows file related functions
    print('Path: ${ value.path}');
    print('Type: ${stat.type}');
    print('Changed: ${stat.changed}');
    print('Modified: ${stat.modified}');
    print('Accessed: ${stat.accessed}');
    print('Mode: ${stat.mode}');
    print('Size: ${stat.size}');
    print('');

  });

}