class Person {
     String name;
  int age;

  Person() : name = "saad", age = 21;
      Person.info(this.name, this.age);
Person.guest() : name = "Guest", age = 15;
}

class Student extends Person {
  double _grade = 0;
Student(String n, int a, double g) : super.info(n, a) {
       _grade = g;
}

     double get grade => _grade;
set grade(double g) {
    _grade = g;
  }
}

void main() {
  Student s = Student("A7med", 23, 100.99);
  print(s.name);
  print(s.age);
  print(s.grade);
}