class Dish {
  final int id;
  final String name;
  final String description;
  final List<String> allergens;


  Dish.create({
    this.id,
    this.name,
    this.description,
    this.allergens,
    this.tableTalk
  });

  final String tableTalk;

  const Dish(this.name, this.description, this.allergens, this.tableTalk, { this.id = 0 });
}