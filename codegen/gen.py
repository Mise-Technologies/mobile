import csv
import os.path

def escape_character(string, chars = ["\'"]):
  for char in chars:
    string = string.replace(char, "\\" + char)
  return string

# all dishes by category
all_dishes = {}
all_allergens = {}

# all_allergens['Gluten-Free Possible'] = []
# all_allergens['Vegan Possible'] = []

with open('bacari-menu.csv') as csv_file:
  reader = csv.reader(csv_file)
  first = True
  for row in reader:
    if first:
      first = False
      continue

    if not row[0] in all_dishes:
      all_dishes[row[0]] = []

    as_ = []
    # logging the allergens
    if not row[5] == '':
      allergens = row[5].split(', ')
      for allergen in allergens:
        a = allergen.lower()
        a = a[0].upper() + a[1:]
        as_.append(a)
        if not a in all_allergens:
          all_allergens[a] = []
        all_allergens[a].append(row[1])

    # adding dish to category
    all_dishes[row[0]].append((row[1], row[2], row[3], as_, row[12]))

    # if not row[6] == 'X':
    #   all_allergens["Gluten-Free Possible"].append(row[1])
    
    # if not row[7] == 'X':
    #   all_allergens["Vegan Possible"].append(row[1])

f = open(os.path.dirname(__file__) + '../lib/data.dart', 'w')
f.write("import 'package:moPass/models/dish.dart';\n")
f.write("\n")
f.write("const MENU_CATEGORIES = [\n")
# f.write("  'All Dishes',\n")
for key in [
  "Cold",
  "Hot",
  "Grilled Pizza",
  "Sweet",
  "Brunch"
]:
  f.write("  '{}',\n".format(key))
f.write("];\n")
f.write("\n")

f.write("const Map<String, Dish> DISHES = {\n")
for key in all_dishes:
  for dish in all_dishes[key]:
    f.write("  '{0}': Dish(\n    '{0}',\n    '{1}',\n    [".format(escape_character(dish[0]), escape_character(dish[1])))
    if len(dish[3]) > 0:
      f.write("\n")
      for a in dish[3]:
        f.write("      '{}',\n".format(a))
      f.write("    ")
    f.write("],\n   '{}',\n".format(escape_character(dish[4])))
    f.write("  ),\n")
    

f.write("};\n")
f.write("\n")

f.write("const Map<String, List<String>> DISHES_BY_CATEGORIES = {\n")
# f.write("  'All Dishes': [\n")
# for key in all_dishes:
#   for dish in all_dishes[key]:
#     f.write("    '{}',\n".format(escape_character(dish[0])))
# f.write("  ],\n")
for key in all_dishes:
  f.write("  '{}': [\n".format(key))
  for dish in all_dishes[key]:
    f.write("    '{}',\n".format(escape_character(dish[0])))
  f.write("  ],\n")
f.write("};\n")
f.write("\n")

f.write("const Map<String, Set<String>> ALLERGENS = {\n")
for allergen in [
  "Dairy", 
  "Gluten", 
  "Treenuts", 
  "Egg", 
  "Soy", 
  "Shellfish", 
  "Fish", 
  "Seeds", 
  "Sesame", 
  "Garlic", 
  "Onion", 
  "Cilantro", 
  "Truffle"
]:
  f.write("  '{}': {{\n".format(allergen))
  for dish in all_allergens[allergen]:
    f.write("    '{}',\n".format(escape_character(dish)))
  f.write("  },\n")
f.write("};\n")
f.write("\n")

f.close()
