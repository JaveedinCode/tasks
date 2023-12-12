void main() {
  List<int> numbers = [2, 3, 4, 5];
  int allsum = lastsum(numbers);
  print("result: $allsum");
}

int lastsum(List<int> numbers) {
  int sum = numbers.reduce((value, element) => value * element);
  return sum;
}
