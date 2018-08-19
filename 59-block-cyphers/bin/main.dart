import 'dart:convert';
import 'dart:typed_data';
import 'dart:math';
import 'package:collection/collection.dart';
import 'package:pointycastle/pointycastle.dart';

// AES
main(List<String> arguments) {
  final key = randomBytes(16); // 16 is block size, if you use other value you get errpr
  final params = new KeyParameter(key);

  //instead of taking stream of data like stream cypher, block cypher takes block of data and adds different modes
  BlockCipher cipher = new BlockCipher("AES");
  cipher.init(true, params);

  //Encrypt
  String plaintext = 'Hello World';
  Uint8List plain_data = createUint8ListFromString(plaintext.padRight(cipher.blockSize)); // PAD - NOT 1000% secure
  Uint8List encrypted_data = cipher.process(plain_data);

  //Decrypt
  cipher.reset();
  cipher.init(false, params);
  Uint8List decrypted_data = cipher.process(encrypted_data);

  displayUint8List('Plain text', plain_data);
  displayUint8List('Encrypted data', encrypted_data);
  displayUint8List('Decrypted data', decrypted_data);

  //Make sure they match
  Function eq = const ListEquality().equals;
  assert(eq(plain_data,decrypted_data));

  print(UTF8.decode(decrypted_data).trim());

}

//From deriving keys tutorial
Uint8List createUint8ListFromString(String value) => new Uint8List.fromList(UTF8.encode(value));

//From deriving keys tutorial
void displayUint8List(String title, Uint8List value) {
  print(title);
  print(value);
  print(BASE64.encode(value));
  print('');
}

//From secure random numbers tutorial
Uint8List randomBytes(int length) {
  final rnd = new SecureRandom("AES/CTR/AUTO-SEED-PRNG");

  final key = new Uint8List(16);
  final keyParam = new KeyParameter(key);
  final params = new ParametersWithIV(keyParam, new Uint8List(16));

  rnd.seed(params);
  var random = new Random();
  for(int i = 0; i < random.nextInt(255); i++) {
    rnd.nextUint8();
  }

  var bytes = rnd.nextBytes(length);
  return bytes;
}