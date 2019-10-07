import 'dart:math';

class Point {
  int x;
  int y;

  Point(int x, int y) {
    this.x = x;
    this.y = y;
  }
}
// Challenge 1
// Consider the class Point defined above
// Write a function that takes a list of Points and logs to the console the bounds of the smallest upright rectangle which encloses all the points.
// For example, given the points (-1, 0), (2, 2), (1,3) the function should print:
// Bottom-left: (-1, 0)
// Top-right: (2,3)


// Challenge 2
// A number is a perfect number if is equal to sum of its proper divisors, that is, sum of its positive divisors excluding the number itself.
// Write a function to check if a given number is perfect or not.
// For example, if 15 is given as input it should print 'false' because Divisors of 15 are 1, 3 and 5. Sum of
// divisors is 9 which is not equal to 15
// if 6 is given as input it should print 'true' because Divisors of 6 are 1, 2 and 3. Sum of
// divisors is 6.
perfectNumberOrNot(int number){
  int sum = 0;
  for(int i = 1; i < number; i++){
    if(number % i == 0){
      sum = sum + i;
    }
  }
  if(sum == number){
    print('$number is perfect number');
  }
  else{
    print('$number is not perfect number');
  }
}

boundedRect(List<Point>pointsList){


  List<int> listOfX = pointsList.map((Point p) => p.x).toList();
  List<int> listOfY = pointsList.map((Point p) => p.y).toList();

  int leastX = listOfX.reduce(min);
  int leastY = listOfY.reduce(min);
  int largeX = listOfX.reduce(max);
  int largeY = listOfY.reduce(max);

  return 'Bottom-left: (${leastX}, ${leastY}) Top-right: (${largeX},${largeY})';

}
void main() {

  // Test the function defined above with given List of points
  List<Point> points = [Point(-1, 0), Point(2, 2), Point(1, 3)];
  print(boundedRect(points));
  perfectNumberOrNot(12);
  perfectNumberOrNot(6);
  // Test the perfect number function here

}
