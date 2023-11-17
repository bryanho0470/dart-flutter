class Player {
  final String name, team;
  int xp;

  void sayHello() {
    print(
        "say hello $name I'm in $team team. I have experience for $xp years."); // dont need {this.name}
  }

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        team = playerJson['team'],
        xp = playerJson['xp'];
}

void main() {
  var apiData = [
    {
      "name": "nico",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "park",
      "team": "green",
      "xp": 10,
    },
    {
      "name": "lynn",
      "team": "bule",
      "xp": 20,
    },
  ];
  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
