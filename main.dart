class Strong {
  final double strengthLevel = 1993.22;
}

class QuickRunner {
  quickRun() {
    print('im very fassssssssst!!');
  }
}

class Tall {}

class Human with Strong, QuickRunner, Tall {
  // when we use Mixins the refered class should not have constructor
  final String name;

  Human({required this.name}); //constructor

  void sayHello() {
    print("hello my name is $name");
  }
}

enum Team { blue, red }

class Player extends Human {
  final Team team;

  Player({required this.team, required String name})
      : super(name: name); // constructor

  @override
  void sayHello() {
    super.sayHello();
    print("and Im in $team team");
  }
}

void main() {
  var player = Player(team: Team.blue, name: "nico");
  player.quickRun();
}
