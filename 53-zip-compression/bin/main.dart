import 'dart:io';
import 'dart:convert';
import 'package:archive/archive.dart';
import 'package:path/path.dart' as p;

main(List<String> arguments) {

  List files = new List();
  Directory.current.listSync().forEach((FileSystemEntity fse) {
    //building  list of files we want to add to the zip file
    if(fse.statSync().type == FileSystemEntityType.FILE) files.add(fse.path);
  });

  Directory dir = Directory.current;
  print(dir.path);

  //creating a zip file of a current directory and saving as test.zip
  String zipfile = dir.path + '\\raunak.zip';

  zip(files, zipfile);

  //decompressing our zip file and saving its content in the directory 'raunak'
  unzip(zipfile, dir.path + "\\raunak");

}

void zip(List<String> files, String file) {
  Archive archive = new Archive();

  files.forEach((String path){
    //adding all files here
    File file = new File(path);

    ArchiveFile archivefile = new ArchiveFile(p.basename(path), file.lengthSync(), file.readAsBytesSync());
    archive.addFile(archivefile);

  });

  ZipEncoder encoder = new ZipEncoder();
  File f = new File(file);
  f.writeAsBytesSync(encoder.encode(archive));

  print('Compressed');

}

void unzip(String zip, String path) {
  File file = new File(zip);

  Archive archive = new ZipDecoder().decodeBytes(file.readAsBytesSync());

  archive.forEach((ArchiveFile archivefile) {
    File file = new File(path + '/' + archivefile.name);
    //creating a directory if it is not there that's why we are setting it as true
    file.createSync(recursive: true);
    file.writeAsBytesSync(archivefile.content);

  });

  print('Decompressed');
}