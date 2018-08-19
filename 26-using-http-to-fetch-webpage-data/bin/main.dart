import 'package:http/http.dart' as http;

main(List<String> arguments) {

  var url = "https://facebook.com";

  http.get(url).then((response){
    print("Response status code: ${response.statusCode}"); //200 means OK
    print("Response body: ${response.body}");
  });
}
