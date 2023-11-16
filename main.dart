class Player {
  final String name = 'nico';
  int xp = 1500;

  void sayHello() {
    print('say hello $name'); // dont need {this.name}
  }
}

void main() {
  var player = Player(); //new Player() is also possible
  player.sayHello();
}
