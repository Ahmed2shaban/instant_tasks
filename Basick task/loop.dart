//loop
void main() {
  int i = 0;
  while (i < 20) {
    i++;
    if (i == 15) {
      break;
    }
    if (i % 3 == 0) {
      continue;
    }
    print(i);
  }
}
