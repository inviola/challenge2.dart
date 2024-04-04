import 'dart:io';

// Interface for a shape
abstract class Shape {
  double calculateArea();
}

// Base class for shapes
class BaseShape implements Shape {
  @override
  double calculateArea() {
    return 0; // Default implementation, to be overridden by subclasses
  }
}

// Rectangle class inheriting from BaseShape and implementing Shape interface
class Rectangle extends BaseShape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

// Circle class inheriting from BaseShape and implementing Shape interface
class Circle extends BaseShape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// Class to read data from file and create shapes
class ShapeReader {
  List<BaseShape> readShapesFromFile(String filePath) {
    List<BaseShape> shapes = [];

    try {
      File file = File(filePath);
      List<String> lines = file.readAsLinesSync();

      for (var line in lines) {
        var parts = line.split(' ');
        if (parts[0] == 'rectangle') {
          double width = double.parse(parts[1]);
          double height = double.parse(parts[2]);
          shapes.add(Rectangle(width, height));
        } else if (parts[0] == 'circle') {
          double radius = double.parse(parts[1]);
          shapes.add(Circle(radius));
        }
      }
    } catch (e) {
      print("Error reading file: $e");
    }

    return shapes;
  }
}

void main() {
  // Creating an instance of ShapeReader
  var shapeReader = ShapeReader();

  // Reading shapes from file
  var shapes = shapeReader.readShapesFromFile('shapes.txt');

  // Printing areas of shapes
  for (var shape in shapes) {
    print("Area of shape: ${shape.calculateArea()}");
  }
}
