import 'Point.dart';

class Rectangle {
  Point topLeft;
  Point bottomRight;

  Point get topLeftCoord {
    return topLeft;
  }

  Point get bottomRightCoord {
    return bottomRight;
  }

  void set topLeftCoord(Point newTopLeft) {
    topLeft = newTopLeft;
  }
  void set bottomRightCoord(Point  newBottomRight){
    bottomRight = newBottomRight;

  }


  double get  width => (bottomRight.x  - topLeft.x).abs();
  double get height => (topLeft.y - bottomRight.y).abs();
  double get area => width *height ;

  Rectangle(this.topLeft, this.bottomRight) {}
}



void main (){



  Point p1 = Point(4, 8);
  Point p2 = Point(7, 3);
  Rectangle rec1 = Rectangle(p1, p2);

  print(rec1.width);
  print(rec1.height);
  print(rec1.area);
}


