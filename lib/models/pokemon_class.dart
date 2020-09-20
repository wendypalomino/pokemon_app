class Pokemon {
  int id;
  String name, type, photo, about;
  int height, weight;
  List stats;

  Pokemon.fromList(map){
    this.id = map['id'];
    this.name = map['name'];
    this.type = map['type'];
    this.photo = map['photo'];
  }

  Pokemon.byId(map){
    this.id = map['id'];
    this.name = map['name'];
    this.type = map['type'];
    this.photo = map['photo'];
    this.about = map['about'];
    this.height = map['height'];
    this.weight = map['weight'];
    this.stats = (map['stats'] as List).map((map) => Stat(map)).toList();
  }
}

class Stat {
  String name;
  int base;
  Stat(Map map) {
    this.name = map['name'];
    this.base = map['base'];
  }
}

