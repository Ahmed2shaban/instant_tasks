
import 'person.dart';
import 'doctor.dart';

class Patient extends Person {
  static int guestCounter = 0;
  String _patientId;
  Doctor? _doctor;

  Patient(String name, int age, String patientId)
      : _patientId = patientId,
        super(name, age) {
    if (patientId.trim().isEmpty) {
      throw ArgumentError("ID cannot be empty");
    }
  }

  Patient.guest()
      : _patientId = "GUEST-${++guestCounter}",
        super("Guest Patient", 0);
  String get patientId => _patientId;
  set patientId(String id) {
    if (id.trim().isEmpty) {
      throw ArgumentError("ID cannot be empty");
    }
    _patientId = id;
  }

  void bookAppointment(Doctor doctor) {
    _doctor = doctor;
    print("Appointment booked successfully!");
  }

  void displayInfo() {
    print("Patient Name: $name");
    print("Age: $age");
    print("Patient ID: $_patientId");

    if (_doctor != null) {
      print("Assigned Doctor: ${_doctor!.name}");
    } else {
      print("Assigned Doctor: Not assigned");
    }
  }
}
