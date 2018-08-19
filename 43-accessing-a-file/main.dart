import 'dart:io';

main(List<String> arguments) {

  Directory dir = Directory.current;
  print(dir.path);

  File file = new File(dir.path + '/myfile.txt');

  writeFile(file);
  readFile(file);

}

void writeFile(File file) {
  //Append, Write

  RandomAccessFile raf = file.openSync(mode: FileMode.WRITE);
  // creating a file myfile.txt and adding below content
  /*we are using WRITE mode instead of APPEND cz in APPEND mode it adds content
  again and again whenever you run this program where as WRITE will ovewrite a file*/
  raf.writeStringSync('Hello World!\r\nHow are you today?');
  raf.flushSync();
  raf.closeSync();
}

void readFile(File file) {

  if(!file.existsSync()) {
    print('file not found!');
    return;
  }

  print('Reading string...');
  print(file.readAsStringSync());

  print('Reading bytes....');
  List values = file.readAsBytesSync();
  values.forEach((value) => print(value));

}
