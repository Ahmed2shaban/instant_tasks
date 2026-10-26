void main() {
  displayStudentResult("Ahmed", 85.0, "Very Good");

  displayStudentResult("Ali", 90.0);
}
void displayStudentResult(
    String name, double average, [String? notes]) {
  print("Name: $name");
  print("Average: $average");
  print("Notes: ${notes ?? 'No notes'}");
}