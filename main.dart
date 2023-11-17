abstract class Human {
  void walk();
}


enum Team { red, blue, green }
enum XpLevel {beginner, medium, pro}

class Player extends Human {
  String name;
  Team team;
  XpLevel xp;

  void walk() {
    print("Im walking")
  }

  void sayHello() {
    print(
        "say hello $name I'm in $team team. I have experience for $xp years."); // dont need {this.name}
  }

  Player({required this.name, required this.xp, required this.team});
}

void main() {
  var nico = Player(name: "nico", xp: XpLevel.beginner, team: Team.blue)
  var potato = nico
    ..name = "las"
    ..team = Team.red
    ..xp = XpLevel.pro
    ..sayHello();
}
