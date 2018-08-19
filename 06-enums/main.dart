/* dart uses concept of collections not arrays, enum is a type of
 collection consisting of a set of named values called elements and it
 can't be declared inside main func */

enum colors {red, green, blue}

main(List<String> arguments) {
  print(colors.values);
  print(colors.red);

}
