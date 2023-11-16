class Player {
  final String name;
  int xp;
  final String team;
  int age;

  // constructor
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print(
        "say hello $name I'm $age years old. I'm in $team team. I have experience for $xp years."); // dont need {this.name}
  }
}

void main() {
  var player = Player(
    name: "nico",
    xp: 1500,
    team: "cuba",
    age: 14,
  ); //new Player() is also possible
  player.sayHello();
  var player2 = Player(
    name: "park",
    xp: 45000,
    team: 'korea',
    age: 20,
  );
  player2.sayHello();
}
