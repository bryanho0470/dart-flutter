void main() {
  var giveMeFive = true;
  // List<int> number = [1,2,3,4.] same expression
  var number = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  print(number);
}
