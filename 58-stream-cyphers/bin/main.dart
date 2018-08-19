import 'dart:convert';
import 'dart:typed_data';
import 'dart:math';
import 'package:collection/collection.dart';
import 'package:pointycastle/pointycastle.dart';

main(List<String> arguments) {

  final keybytes = randomBytes(16);
  final key = new KeyParameter(keybytes);

  final iv = randomBytes(8);
  //IV is similar to salt but little different
  final params = new ParametersWithIV(key, iv);

  //StreamCipher takes the stream of data as it comes
  StreamCipher cipher = new StreamCipher("Salsa20");
  cipher.init(true, params);

  //Encrypt
  String plaintext = 'Hello World';
  Uint8List plain_data = createUint8ListFromString(plaintext);
  Uint8List encrypted_data = cipher.process(plain_data);

  //Decrypt
  cipher.reset();
  cipher.init(false, params);
  Uint8List decrypted_data = cipher.process(encrypted_data);

  displayUint8List('Plain text', plain_data);
  displayUint8List('Encrypted Data', encrypted_data);
  displayUint8List('Decrypted Data', decrypted_data);

  //Make sure they match!
  Function eq = const ListEquality().equals;
  assert(eq(plain_data,decrypted_data));

  print(UTF8.decode(decrypted_data));

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