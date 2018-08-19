import 'package:http/http.dart' as http;
import 'package:webfeed/webfeed.dart';

main(List<String> arguments) {
  var client = new http.Client();
  // RSS feed
  client.get("https://techlomedia.in/feed/").then((response) {
    return response.body;
  }).then((bodyString) {
    var channel = new RssFeed.parse(bodyString);
    print(channel);
    return channel;
  });

}
