main(List<String> arguments) {

  sayHello("raunak");

  download('myfile.txt');
  download('myfile2.txt',true);

}

void sayHello([String name = '']) {
  //padLeft will take the 'name' and left padding around it
  if(name.isNotEmpty) name = name.padLeft(name.length + 5);
  print('Hello${name}');
}

void download(String file, [bool open = false]) {
  print('Downloading ${file}');
  if(open) print('Opening ${file}');
}
