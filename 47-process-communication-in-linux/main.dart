import 'dart:io';
import 'dart:convert';

main(List<String> arguments) {

  //Linux Specific
  Process.start('cat', []).then((Process process) { //console DIR
    //transform the output
    process.stdout.transform(UTF8.decoder).listen((data) {print(data);});

    //Send to the process
    process.stdin.writeln('Hello World');

    //Stop the process
    Process.killPid(process.pid);

    //get the exit code
    process.exitCode.then((int code) {
      print('Exit code: ${code}');

      //exit
      exit(0);
    });
  });



}
