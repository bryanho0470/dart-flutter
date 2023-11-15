String sayHello({
  required String name,
  required int age,
  required String country,
}) {
  return ("hello $name, you are $age years old. and you came from $country!!");
}

void main() {
  print(sayHello(age: 40, country: 'cuba', name: 'Park'));
}
