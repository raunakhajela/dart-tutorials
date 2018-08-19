import 'dart:io';
import 'dart:async';

//async allows async code to execute in a function
main(List<String> arguments) async {

  print('Starting');

  //await waits for the value i.e object from a Future to be provided and once it is provided then it handle executions
  File file = await appendFile();

  print('Appended to file ${file.path}');

  print('*** End');

}

Future<File> appendFile() {
  File file = new File(Directory.current.path + '/test.txt');
  DateTime now = new DateTime.now();
  return file.writeAsString(now.toString() + '\r\n', mode: FileMode.APPEND);
}
