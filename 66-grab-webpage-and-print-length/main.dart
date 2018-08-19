import 'package:http/http.dart' as http;
import 'dart:async';

main(List<String> arguments) async {
  var url = 'http://kodestat.com/';
  var response = await http.get(url); //get will get the page
  print('Response status ${response.statusCode}');
  print('Length: ${response.body.length}');
}
