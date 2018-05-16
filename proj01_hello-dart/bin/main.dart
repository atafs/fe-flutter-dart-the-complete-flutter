import 'package:proj01_hello_dart/function_hello.dart' as function_hello;

main(List<String> arguments) {

  /* Introduction to the Dart Programming Language - From Scratch */
  // variables of type string using direct assignment
  var country = 'Mozambique';
  print(country);

  // variables with specific type
  String name;
  name = 'Americo';
  print(name);

  // variables integers and doubles
  num age = 38;
  int ageInt = 38;
  double ageDouble = 38.5;
  print(age);
  print(ageInt);
  print(ageDouble);

  // variables boolean
  bool isTrue = true;
  print(isTrue);

  // variables const and final
  // const: constant at compile-time
  // final: never changes
  const pi = 3.14;
  print(pi);

  final myName = 'Americo';
  print(myName);

  // variables concatenate strings
  String americo = 'Americo';
  String guida = 'Guida';
  print('Hello there ${americo} and ${guida.toUpperCase()}!!');

  // variables operators (arithmetics)
  int number = 38;
  int numberTwo = 2;

  double gravity = 9.8;
  var result = numberTwo + number;
  print(result);
  print(result * gravity);
  print(result % gravity);

  // variables equality and relational operators
  print(result != gravity);
  print(gravity == 9.8);
  print(gravity >= 50);

  /* Control Flow and Functions in Dart - If Statements, Logical Operators, For Loops */
  // type test operator
  print(number is! String);
  print(gravity is double);

  // if statement
  if(number == 38) {
    print('If true, this will run');
  } else {
    print('Else is running!!');
  }

  // logical operators
  number = 99;
  if(number != 100 && number > 100) {
    print('Not a hundred');
  } else {
    print('Yessss!!!!');
  }

  // loops for
  var fruit = 'Mango';
  for(var i = 0; i < 10; i++) {
    if(i % 4 == 0) {
      var now = new DateTime.now();
      print('$fruit $i => date: $now');
    }
  }

  // loop do while
  number = 0;
  do {
    number++;
    print('Going do while... $number');
  } while(number < 10);

  // loop while
  number = 0;
  while(true) {
    number++;

    if(number >= 38) {
      print('Going while... $number');
      break;
    }

    print(number);
  }

  // switch cases
  var ageSwitch = 38;
  if(ageSwitch == 39) {
    print('You are almost 40 years old!!');
  }

  switch (ageSwitch) {
    case 30:
      print('Ypu are starting your thirty');
      break;
    case 35:
      print('You are in the middle of the thirty!!');
      break;
    case 38:
      print('$ageSwitch: You are almost forty');
      break;

      default:
        print('You are $ageSwitch');
  }

  // function
  // void: doesn't return anything
  doSomething();
  sayMyName();

  var ourName = showName();
  print(ourName);
  print('This is our name: ${showName()}, ${showAge()}, 42 and 1 and is Know? ${isKnow()}');

  print('Hello world: ${function_hello.calculate()}!');
}

/* FUNCTIONS */
doSomething() {
  print('Hello Functions!!');
}

sayMyName() {
  var name = 'Americo';
  
  if(name.contains('A')) {
    print('Hoooray!!');
  } else {
    print('Nay....');
  }
  
  print('My name is $name!!');
}

String showName() {
  return 'Americo, Guida e Hugo Tomas!!';
}

int showAge() {
  return 38;
}

bool isKnow() {
  return true;
}
