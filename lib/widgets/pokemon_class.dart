class Pokemon {
  int id;
  String name;
  String type;
  String photo;
  String about;
  int height;
  int weight;
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
    this.stats = map['stats'];
  }
}