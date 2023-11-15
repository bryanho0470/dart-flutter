String sayHello(String name, int age, [String? country]) {
  return ("hello $name, you are $age years old. and you came from $country!!");
}

void main() {
  var result = sayHello('cuba', 40);
  print(result);
}
