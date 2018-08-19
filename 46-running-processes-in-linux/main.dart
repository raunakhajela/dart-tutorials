import 'dart:io';

main(List<String> arguments) {
  //List all files in a directory - Linux specific
  Process.run('ls', ['-l']).then((ProcessResult results) { //notepad C:\windows\System32\notepad.exe
    print(results.stdout);
    print('Exit code: ${results.exitCode}'); // 0 is good
  });

}
