void main() {

  // if else-if else
  int number = 11;
  if (number % 2 == 0){
    print ('Even');
  }
  else if (number % 3 == 0){
    print("divisible by 3");
  }
  else {
    print("Is it a prime");
  }

  // switch
  var choice = 'r';
  switch (choice){
    case 'a':
      print('I am a');
      break;
    case 'b':
      print('I am b');
      break;
    default:
      print("Random");

  }

  // for
  for (var i=0; i<5; i++) {
    print(i);
  }

  // for in
  var myArray = [0, 1, 2, 3, 4];
  for (number in myArray) {
    print(number);
  }

  // for each - SKIPPED

  // while 
  number = 10;
  while (number > 0) {
    print(number);
    number--;
  }

  // do while
  do {
    print(number);
    number++;
  } while (number < 10);

  // break and continue
  // break will stop and get you out of the loop and move to the next one.
  // continue will get you you out of that iteration of the loop.
}
