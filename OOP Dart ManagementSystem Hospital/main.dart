import 'dart:io';
import 'hospital.dart';
import 'doctor.dart';
import 'patient.dart';

void main() {
  Hospital hospital = Hospital();

  while (true) {
    print("\n===== Hospital Management System =====");
    print("1. Add Doctor");
    print("2. Add Patient");
    print("3. Display Doctors");
    print("4. Display Patients");
    print("5. Book Appointment");
    print("6. Exit");

    stdout.write("Choose an option: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Doctor name: ");
        String name = stdin.readLineSync()!;

        stdout.write("Doctor age: ");
        int age = int.parse(stdin.readLineSync()!);

        stdout.write("Specialization: ");
        String specialization = stdin.readLineSync()!;

        Doctor doctor = Doctor(name, age, specialization);
        hospital.addDoctor(doctor);
        break;

      case 2:
        stdout.write("Patient name: ");
        String name = stdin.readLineSync()!;

        stdout.write("Patient age: ");
        int age = int.parse(stdin.readLineSync()!);

        stdout.write("Patient ID: ");
        String id = stdin.readLineSync()!;

        Patient patient = Patient(name, age, id);
        hospital.addPatient(patient);
        break;

      case 3:
        hospital.displayDoctors();
        break;

      case 4:
        hospital.displayPatients();
        break;

      case 5:
        stdout.write("Patient ID: ");
        String id = stdin.readLineSync()!;

        stdout.write("Doctor name: ");
        String doctorName = stdin.readLineSync()!;

        hospital.bookAppointment(id, doctorName);
        break;

      case 6:
        print("Goodbye!");
        return;

      default:
        print("Wrong choice!");
    }
  }
}
