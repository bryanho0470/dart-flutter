String sayHello(String name) {
  return ("hello $name nice to meet you!!");
}
// same code : String sayHello(String, name) => "hello $name nice to meet you!!";

num plus(num a, num b) => a + b;

void main() {
  print(sayHello("Nico"));
}
