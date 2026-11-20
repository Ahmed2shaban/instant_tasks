import 'doctor.dart';
import 'patient.dart';

class Hospital {
  List<Doctor> doctors = [];
  List<Patient> patients = [];

  void addDoctor(Doctor doctor) {
    doctors.add(doctor);
    print("Doctor added!");
  }

  void addPatient(Patient patient) {
    for (Patient p in patients) {
      if (p.patientId == patient.patientId) {
        print("This ID already exists!");
        return;
      }
    }

    patients.add(patient);
    print("Patient added!");
  }

  void displayDoctors() {
    if (doctors.isEmpty) {
      print("No doctors available");
    } else {
      for (Doctor d in doctors) {
        d.displayInfo();
        print("----------------");
      }
    }
  }

  void displayPatients() {
    if (patients.isEmpty) {
      print("No patients available");
    } else {
      for (Patient p in patients) {
        p.displayInfo();
        print("----------------");
      }
    }
  }

  void bookAppointment(String id, String doctorName) {
    for (Patient p in patients) {
      if (p.patientId == id) {
        for (Doctor d in doctors) {
          if (d.name.toLowerCase() ==
              doctorName.toLowerCase()) {
            p.bookAppointment(d);
            return;
          }
        }

        print("Doctor not found!");
        return;
      }
    }

    print("Patient not found!");
  }
}
