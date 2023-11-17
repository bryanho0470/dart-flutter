class Player {
  String name, team;
  int xp;

  void sayHello() {
    print(
        "say hello $name I'm in $team team. I have experience for $xp years."); // dont need {this.name}
  }

  Player({required this.name, required this.xp, required this.team});
}

void main() {
  var nico = Player(name: "nico", xp: 200, team: "Green")
  var potato = nico
    ..name = "las"
    ..team = "Red"
    ..xp = 80
    ..sayHello();
}
