import 'dart:io';
import 'dart:async';

main(List<String> arguments) {

  String path = Directory.current.path + "/test.txt";
  print('Appending to ${path}');

  File file = new File(path);

  //Future returns the promise of a value
  Future<RandomAccessFile> f = file.open(mode: FileMode.APPEND);

  f.then((RandomAccessFile raf) {
    print('File has been opened!');

    raf.writeString('Hello World').then((value) {
      print('file has been appended!');


    }).catchError(() => print('An error occured')).whenComplete(() => raf.close());
  });

  print('**** The end');

  /* In this case start and end code runs first cz it is synchronous but Future
   runs when it is done executing/runs in parallel at the same time, it is recommended
   to always use 'then' keyword and catchError in Futures.*/

}
