import 'dart:io';
import 'dart:convert';

main(List<String> arguments) {

  String compressed = Directory.current.path + '/compressed.txt';

  File file = new File(compressed);
  file.createSync();
  file.writeAsBytesSync(GZIP.encode(UTF8.encode('Hello World')));

  print(UTF8.decode(GZIP.decode(file.readAsBytesSync())));

}
