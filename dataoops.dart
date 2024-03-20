import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a class that implements the Animal interface
class Dog implements Animal {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

// Define a class that extends another class
class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat meows');
  }
}

// Define a class that overrides an inherited method
class Cow extends Animal {
  @override
  void makeSound() {
    print('Cow moos');
  }
}

// Define a class that is initialized with data from a file
class Person {
  String name;

  Person(this.name);

  void introduce() {
    print('Hello, my name is $name');
  }
}

void main() {
  // Create instances of classes
  var dog = Dog();
  var cat = Cat();
  var cow = Cow();

  // Demonstrate method override
  dog.makeSound(); // Output: Dog barks
  cat.makeSound(); // Output: Cat meows
  cow.makeSound(); // Output: Cow moos

  // Initialize an instance with data from a file
  var file = File('data.txt');
  var lines = file.readAsLinesSync();
  var person = Person(lines.first);
  person.introduce();

  // Demonstrate the use of a loop
  for (var i = 0; i < 3; i++) {
    print('Loop iteration $i');
  }
}
