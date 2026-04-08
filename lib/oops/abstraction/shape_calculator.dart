abstract class Shape{
  double calculateArea();
  double calculatePerimeter();

  void printShape(){
    print("Area: ${calculateArea()}");
    print("Perimeter: ${calculatePerimeter()}");
  }

  bool isLargerThan(Shape other){
    return calculateArea()> other.calculateArea();
  }
}

class Circle implements Shape{
  final double radius;

  Circle({required this.radius});
  @override
   double calculateArea(){
    return  3.14*radius*radius;
   }

   @override
   double calculatePerimeter(){
    return 2*3.14*radius;
   }
   
     @override
     bool isLargerThan(Shape other) {
    return calculateArea()> other.calculateArea();
     }
   
     @override
     void printShape() {
      print("Area: ${calculateArea()}");
      print("Perimeter: ${calculatePerimeter()}");
     }


}


// class Rectangle extends Shape{
//   final double length;
//   final double bredth;

//   Rectangle({required this.bredth, required this.length});
//   @override
//   double calculateArea(){
//     return length*bredth;
//   }

//   @override
//   double calculatePerimeter(){
//     return 2*(length+bredth);
//   }
// }


class Rectangle implements Shape{
  final double length;
  final double breadth;

  Rectangle({required this.breadth, required this.length});
  @override
  double calculateArea(){
    return length*breadth;
  }

  @override
  double calculatePerimeter(){
    return 2*(length+breadth);
  }
  
  @override
  bool isLargerThan(Shape other) {
    return calculateArea()> other.calculateArea();

  }
  
  @override
  void printShape() {

    print("Area of rectangle:${calculateArea()}");
    print("Perimeter: ${calculatePerimeter()}");
  }
}

void main(){
  Rectangle re = Rectangle(breadth: 20, length: 12);
  double area = re.calculateArea();
  print(area);
  
}


