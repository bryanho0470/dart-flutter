import 'dart:html';

class Human {
  final String name;

  Human({required this.name}); //constructor

  void sayHello() {
    print("hello my name is $name");
  }
}

enum Team { blue, red }

class Player extends Human {
  final Team team;

  Player({required this.team, required String name}) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print("and Im in $team team")
  }
}

void main() {
  var player = Player(team: Team.blue, name: "nico");
}
