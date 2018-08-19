import 'package:http/http.dart' as http;

main(List<String> arguments) async {

  var url = 'http://httpbin.org/post';
  var response = await http.post(url,body: 'name=Raunak&color=blue');
  print('Response status ${response.statusCode}');
  print('Response Body ${response.body}');

}
