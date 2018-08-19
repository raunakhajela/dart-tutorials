import 'dart:async';

int counter = 0;

main(List<String> arguments) {
  // setting duration to 1 sec
  Duration duration = new Duration(seconds: 1);
  //our function will run 5 times with 1 sec of duration each time using timeout func which we are passing as  a object
  Timer timer = new Timer.periodic(duration, timeout);
  print('Started ${getTime()}');
}

// a timer is a callback in memory, one time or periodic
void timeout(Timer timer) {
  print('Timeout: ${getTime()}');

  counter++;
  if(counter >= 5) timer.cancel();
}

String getTime() {
  DateTime dt = new DateTime.now();
  return dt.toString();
}
