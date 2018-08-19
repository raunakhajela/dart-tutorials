import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/pointycastle.dart';

main(List<String> arguments) {

  String password = 'password';

  /*suppose you and your friend both writes the same program then you will get the same key and
  same results and is not very secure so what the 'salt' does is it takes the same algorithm
  and randomizes it a bit, salt is like a key for the key and initializer*/
  var salt = createUint8ListFromString('salt');
  var pkcs = new KeyDerivator("SHA-1/HMAC/PBKDF2"); //these are algorithms
  var params = new Pbkdf2Parameters(salt, 100, 16); //salt, 100 iteration count, 16 is the desired key which uses the block size so something other than 16 won't work

  //initializing the algorithms with the params we just set
  pkcs.init(params);

  Uint8List key = pkcs.process(createUint8ListFromString(password));

  display('Key value', key);
}

Uint8List createUint8ListFromString(String value) => new Uint8List.fromList(UTF8.encode(value));

void display(String title, Uint8List value) {
  print(title);
  print(value);
  print(BASE64.encode(value));
  print('');
}
