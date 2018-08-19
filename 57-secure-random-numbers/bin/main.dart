import 'package:pointycastle/pointycastle.dart';
import 'dart:typed_data';
import 'dart:math';

main(List<String> arguments) {

  print(randomBytes(16));

}

Uint8List randomBytes(int length) {
  final rnd = new SecureRandom("AES/CTR/AUTO-SEED-PRNG");

  // we use this for key generation
  //it takes the key and parameters and it combines those and then seeds it using the generator
  //generator gets the algorrithms, passes it through and give us giant list of numbers and returns the bytes
  final key = new Uint8List(16);
  final keyParam = new KeyParameter(key);
  //creating parameters with initialization vectors
  final params = new ParametersWithIV(keyParam,new Uint8List(16));

  rnd.seed(params); //we are taking the parameters and adding them

  var random = new Random();
  for(int i = 0; i < random.nextInt(255); i++) {
    rnd.nextUint8();
  }

  var bytes = rnd.nextBytes(length);
  return bytes;
}