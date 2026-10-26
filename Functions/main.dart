void main() {
printWelcomeMessage();
double average = calculateAverage(80, 90, 70);
displayStudentResult("Ahmed", average, "Very Good");
displayStudentResult("Ali", 95.0);
}
printWelcomeMessage() {
  print("Welcome to Student Grade System!");
}
double calculateAverage(double g1, double g2, double g3) {
  return (g1 + g2 + g3) / 3;
}
void displayStudentResult(
  String name, double average, [String? notes]) {
  print("Name: $name");
  print("Average: $average");
  print("Notes: ${notes ?? 'No notes'}");
}