import 'dart:io';
import 'dart:convert';

/*udp does not require 3 way handshake and acknowledgement, there is no actual connection b/w the sockets
it just sends the data and hopes for the best*/

/*here we are building our server and listening to it, data comes in and we grab
that datagram and UDP socket receives it and print it out*/

/*they both transfer data at the same speeds, TCP has a three way handshake during
the connection that makes it slightly slower but more stable.*/

main(List<String> arguments) {

  var data = 'Hello World';

  List<int> dataToSend = UTF8.encode(data);
  int port = 3000;

  //Server
  RawDatagramSocket.bind(InternetAddress.LOOPBACK_IP_V4, port).then((RawDatagramSocket udpSocket){
    udpSocket.listen((RawSocketEvent event) {
      if(event == RawSocketEvent.READ) {
        Datagram dg = udpSocket.receive();
        print(UTF8.decode(dg.data));
      }
    });


    //client
    udpSocket.send(dataToSend, InternetAddress.LOOPBACK_IP_V4, port);
    print('Sent!');
  });
}
