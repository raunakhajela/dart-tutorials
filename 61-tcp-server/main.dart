import 'dart:io';
import 'dart:convert';

main(List<String> arguments) async {

  var serverSocket = await ServerSocket.bind('127.0.0.1', 3000);
  print('Listening');

  await for (var socket in serverSocket) {
    socket.listen((List values) {
      print('${socket.remoteAddress}:${socket.remotePort} = ${UTF8.decode(values)}');
    });
  }

}