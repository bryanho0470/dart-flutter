typedef UsenInfo = Map<String, String>;

String sayHi(UsenInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {}
