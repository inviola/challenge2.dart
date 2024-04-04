// Step 1: Define classes and interfaces

// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a superclass
class Shape {
  void draw() {
    print('Drawing shape...');
  }
}

// Define a subclass that extends Shape and implements Animal interface
class Square extends Shape implements Animal {
  double sideLength;

  Square(this.sideLength);

  @override
  void draw() {
    print('Drawing square with side length $sideLength...');
  }

  @override
  void makeSound() {
    print('Square does not make sound.');
  }
}

// Step 2: Read data from a file and initialize an instance of a class

class FileReader {
  static List<String> readFile(String fileName) {
    // Read data from file
    // Return data as a list of strings
  }
}

class SquareFactory {
  static Square createSquareFromFile(String fileName) {
    List<String> data = FileReader.readFile(fileName);
    // Parse data and initialize Square instance
    // Example: return Square(double.parse(data[0]));
  }
}

// Step 3: Method overriding

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void draw() {
    print('Drawing circle with radius $radius...');
  }
}

// Step 4: Method using a loop

void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Step 1: Test inheritance and interface implementation
  Square square = Square(5);
  square.draw(); // Output: Drawing square with side length 5...
  square.makeSound(); // Output: Square does not make sound.

  // Step 2: Test file reading and object initialization
  Square squareFromFile = SquareFactory.createSquareFromFile('data.txt');

  // Step 3: Test method overriding
  Circle circle = Circle(3);
  circle.draw(); // Output: Drawing circle with radius 3...

  // Step 4: Test method using a loop
  printNumbers(5); // Output: 1 2 3 4 5
}
