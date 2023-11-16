class Player {
  final String name, team;
  int xp, age;

  // constructor
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  Player.createRedPlayer({required String name, required int age})
      : this.name = name,
        this.age = age,
        this.team = "red",
        this.xp = 0;

  Player.createBluePlayer(String name, int age)
      : this.name = name,
        this.age = age,
        this.team = "blue",
        this.xp = 10;

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

  var redPlayer = Player.createRedPlayer(
    name: "hoho",
    age: 20,
  );
  redPlayer.sayHello();

  var bluePlayer = Player.createBluePlayer(
    "BUBU",
    21,
  );
  bluePlayer.sayHello();
}
