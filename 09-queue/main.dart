import 'dart:collection';

main(List<String> arguments) {
  //Ordered, no index, add and remove from the start and end

  Queue items = new Queue();
  items.add(1);
  items.add(3);
  items.add(2);
  items.removeFirst();
  items.removeLast();
  print(items);
}
