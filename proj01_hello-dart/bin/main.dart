import 'package:proj01_hello_dart/function_hello.dart' as function_hello;

/* GLOBALS (scope outside the main) */
var myOutsideVar = 'Outside Var!!';

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

  // 39
  var sayHelloString = sayHello('Americo, Guida e Hugo Tomas', 'Agrela e Batalha', 38);
  print(sayHelloString);

  // 40 opcional params
  var yourAgeString1 = yourAge('Americo', 'Agrela', 38);
  print(yourAgeString1);
  var yourAgeString2 = yourAge('Guida', 'Marques');
  print(yourAgeString2);

  // 41 globals (lexical scope in dart)
  myOutsideVar = 'Hello There!!';
  print(myOutsideVar);

  insideFunction() {
    var agentName = 'Hugo Tomas!!';
    print('Agente name: $agentName');

    myOutsideVar = 'Hugo';
    print('From inside is: $myOutsideVar');

    //another level of scope
    innerFunction() {
      print('Inner function $agentName');
    }

    innerFunction();
  }

  insideFunction();

  // 44 object oriented programming
  // class: blueprint or model
  // object: instances of the blueprint
  // properties or attributes (characteristics)
  // methods (actions like turnOn, turnOff, setVolume,...)
  var mic = new Microphone.initialize();
  // access the attributes of the object setting them
  mic.name = 'Blue Yeti';
  mic.color = 'silver';
  mic.model = 1234;
  print('Mic: $mic of the model ${mic.model}');

  // 46 methods
  mic.turnOn();
  mic.setVolume();
  mic.turnOff();

  print(mic.isOn());
  print(mic.modelNumber());

  // 47 constructors
  var mic1 = new Microphone('Yetti', 'Blue', 9876);
  print('mic1 $mic1');

  // 49
  print(mic.getName);
  mic.setName = 'NewName';
  print(mic.getName);

  // 52 inheritance
  var hugo = new Hugo();
  hugo.name = 'Hugo Tomas';
  hugo.showName();
  hugo.profession = 'Boss Baby';
  hugo.showProfession();

  var guida1 = new Guida();
  guida1.name = 'Guida e Linda';
  guida1.nationality = 'Portuguese';
  guida1.showName();

  // 53 override
  hugo.sayHello();
  guida1.sayHello();

  hugo.showNationality();
  guida1.showNationality();

  // 54
  this is a conflict in local v3





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

/* FUNCTIONS minimalist syntax */
String getName() => 'Americo, Guida e Hugo Tomas!!';

int showAgeNow() => 38;

String sayHello(String name, String lastName, [int age]) =>'sayHello $name $lastName and my age id $age';

/* OPCIONAL PARAMS (with square brackets) */
String yourAge(String name, String lastName, [int age]) {
  var finalResult = '$name $lastName';

  if (age != null) {
    finalResult = '$finalResult and the age is $age';
  }
  return finalResult;
}

/* CLASSES */
class Microphone {
  // attributes or instance variables or member variables
  String name;
  String color;
  int model;

  // constructor (command + n)
//  Microphone(String name, String color, int model) {
//    this.name = name;
//    this.color = color;
//    this.model = model;
//  }
  // syntactic sugar constructor
  Microphone(this.name, this.color, this.model);

  // named constructor
  Microphone.initialize() {
    name = 'name';
    color = 'color';
    model = 000;
  }

  // getters and setters
  String get getName => name;
  set setName(String value) => name = value;

  // methods
  void turnOn() {
    print('$name is on!');
  }

  void turnOff() {
    print('$name is off!');
  }

  void setVolume() {
    print('$name with the color $color volume is up!!');
  }

  bool isOn() => true;

  int modelNumber() => model;
}

/* INHERITANCE FOR CLASSES */
//parent
class Person {
  //attributes
  String name, lastName, nationality;

  //methods
  void showName() {
    print(this.name);
  }

  void sayHello() => print('Hello');

  void showNationality() => print('I am British!!');
}

//child
class Hugo extends Person {
  //attributes
  String profession;

  //methods
  void showProfession() => print(profession);

  @override
  void sayHello() => print('Ola');

  @override
  void showNationality() => print('Eu sou um BIFINHO!! PT e UK');
}

class Guida extends Person {}
