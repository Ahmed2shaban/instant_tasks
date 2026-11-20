import 'person.dart';

class Doctor extends Person {
  final String specialization;

  Doctor(String name, int age, this.specialization): super(name, age);

  void displayInfo() {
    print("Doctor Name: $name");
    print("Age: $age");
    print("Specialization: $specialization");
  }
}
