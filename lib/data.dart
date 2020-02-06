const MENU_CATEGORIES = [
  'All Dishes',
  'Appetizers',
  'Salad'
];

class Dish {
  final String name;
  final String description;

  const Dish(this.name, this.description);
}

const Map<String, Dish> DISHES = {
  'Sesame Sourdough Baguette': Dish('Sesame Sourdough Baguette', 'Dummy description'),
  'Balinese Fried Meatballs': Dish('Balinese Fried Meatballs', 'Meatball description'),
  '\‘goi du du\’ green papaya salad': Dish('\‘goi du du\’ green papaya salad', 'Salad description'),
  'chili salted baby octopus': Dish('chili salted baby octopus', 'Whatever'),
};

const Map<String, List<String>> DISHES_BY_CATEGORIES = {
  'All Dishes': [
    'Sesame Sourdough Baguette',
    'Balinese Fried Meatballs',
    '\‘goi du du\’ green papaya salad',
    'chili salted baby octopus'
  ],
  'Appetizers': [
    'Sesame Sourdough Baguette',
    'Balinese Fried Meatballs'
  ],
  'Salad': [
    '\‘goi du du\’ green papaya salad',
    'chili salted baby octopus'
  ]
};


const Map<String, Set<String>> ALLERGENTS = {
  'Sesame': {
    'Sesame Sourdough Baguette'
  },
  'Spicy': {
    'chili salted baby octopus'
  },
};
