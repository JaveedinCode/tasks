void main() {
  List<int> tamsayi = [10, 5, 25, 8, 15, 7];
  int enboyuk = findMax(tamsayi);

  print("en boyuk sayi: $enboyuk");
}

int findMax(List<int> numbers) {
  int max = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }

  return max;
}
