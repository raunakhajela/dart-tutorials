import 'dart:io';
import 'dart:async';

main(List<String> arguments) {

  /*async allows for synchronous and asynchronous operations are the things which can
  be done at a same time*/

  /*by default input adds certain characters in your input so to omit that we use
  scape sequence '/r' */

  stdout.write('What is your name?\r\n');

  /*readLineSync() reads a line from the user synchronously means it will block a
  program from executing until that func has completed*/
  String name = stdin.readLineSync();

  name.isEmpty ? stderr.write('Name is empty') : stdout.write('Hello ${name} :) \r\n');
}
