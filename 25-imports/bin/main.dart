import 'package:learn_dart/learn_dart.dart' as imports1;

import 'dart:convert';

main(List<String> arguments) {

  //dart is taking that file you created in 'lib' folder and converting them as class

  print('Hello world: ${imports1.calculate()}');
  imports1.sayHello();

  String myvalue = 'Hello World';
  List ebytes = UTF8.encode(myvalue);
  String encoded = BASE64.encode(ebytes);

  print('Encoded: ${encoded}');

  List dbytes = BASE64.decode(encoded);
  String decoded = UTF8.decode(dbytes);

  print('Decoded: ${decoded}');
}
