import 'dart:typed_data';
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';

main(List<String> arguments) {


  Digest digest = new Digest("SHA-256");

  String value = 'Hello World';

  Uint8List data = new Uint8List.fromList(UTF8.encode(value));
  Uint8List hash = digest.process(data);

  print(hash); // hash will change when you change the original value
  print(BASE64.encode(hash)); // ENCODING IS NOT ENCYPTION!!!!!

}