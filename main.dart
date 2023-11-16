class Player {
  final String name;
  int xp;

  // constructor
  Player(this.name, this.xp);

  void sayHello() {
    print('say hello $name'); // dont need {this.name}
  }
}

void main() {
  var player = Player("nico", 1500); //new Player() is also possible
  player.sayHello();
  var player2 = Player("park", 45000);
  player2.sayHello();
}
