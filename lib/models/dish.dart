class Dish {
  final int id;
  final String name;
  final String description;
  final List<String> allergens;

  const Dish(this.name, this.description, this.allergens, {this.id = 0});

  Dish.create({
    this.id,
    this.name,
    this.description,
    this.allergens,
  });

}