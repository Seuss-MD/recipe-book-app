import 'package:flutter_test/flutter_test.dart';
import 'package:legacy_recipe/models/recipe.dart';
import 'package:legacy_recipe/models/unit.dart';

/// *******************************************
/// TEST RECIPE
/// Unit tests for Recipe
///*******************************************
class TestRecipe {
  void run() {
    group('Recipe', () {
      // constructor
      test('constructor_default', constructor_default);

      // getters / setters
      test('getName', getName);
      test('setName', setName);
      test('getId', getId);
      test('setId', setId);
      test('getServing', getServing);
      test('setServing', setServing);
      test('getDirections', getDirections);
      test('setDirections', setDirections);
      test('getTime', getTime);
      test('setTime', setTime);

      // ingredients
      test('addIngrs_one', addIngrs_one);
      test('addIngrs_two', addIngrs_two);

      // tags
      test('addTag_one', addTag_one);
      test('rmTag_one', rmTag_one);

      // photo and memory
      test('setPhoto', setPhoto);
      test('setMemory', setMemory);
    });
  }

  /*****************************************************************
   * CONSTRUCTOR
   *****************************************************************/

  /// *******************************************
  /// name:    DEFAULT CONSTRUCTOR
  /// input:   nothing
  /// output:  empty name, no tags, no ingredients
  ///*******************************************
  void constructor_default() {
    // setup
    // exercise
    final r = Recipe();

    // verify
    expect(r.name, '');
    expect(r.tags, isEmpty);
    expect(r.ingredients, isEmpty);
    // teardown
  }

  /*****************************************************************
   * GETTERS AND SETTERS
   *****************************************************************/

  /// *******************************************
  /// name:    GET NAME
  /// input:   name "Lasagna"
  /// output:  "Lasagna"
  ///*******************************************
  void getName() {
    // setup
    final r = Recipe();
    r.name = 'Lasagna';
    String name = 'junk';

    // exercise
    name = r.getName();

    // verify
    expect(name, 'Lasagna');
    expect(r.name, 'Lasagna');
    // teardown
  }

  /// *******************************************
  /// name:    SET NAME
  /// input:   (name "old") -> "Tacos"
  /// output:  "Tacos", id untouched
  ///*******************************************
  void setName() {
    // setup
    final r = Recipe();
    r.name = 'old';
    r.id = 8;

    // exercise
    r.setName('Tacos');

    // verify
    expect(r.name, 'Tacos');
    expect(r.id, 8);
    // teardown
  }

  /// *******************************************
  /// name:    GET ID
  /// input:   id 12
  /// output:  12
  ///*******************************************
  void getId() {
    // setup
    final r = Recipe();
    r.id = 12;
    int id = 99;

    // exercise
    id = r.getId();

    // verify
    expect(id, 12);
    expect(r.id, 12);
    // teardown
  }

  /// *******************************************
  /// name:    SET ID
  /// input:   (id 99) -> 3
  /// output:  3, name untouched
  ///*******************************************
  void setId() {
    // setup
    final r = Recipe();
    r.name = 'Soup';
    r.id = 99;

    // exercise
    r.setId(3);

    // verify
    expect(r.id, 3);
    expect(r.name, 'Soup');
    // teardown
  }

  /// *******************************************
  /// name:    GET SERVING
  /// input:   serving 6
  /// output:  6
  ///*******************************************
  void getServing() {
    // setup
    final r = Recipe();
    r.serving = 6;
    int s = 99;

    // exercise
    s = r.getServing();

    // verify
    expect(s, 6);
    expect(r.serving, 6);
    // teardown
  }

  /// *******************************************
  /// name:    SET SERVING
  /// input:   (serving 99) -> 4
  /// output:  4
  ///*******************************************
  void setServing() {
    // setup
    final r = Recipe();
    r.serving = 99;

    // exercise
    r.setServing(4);

    // verify
    expect(r.serving, 4);
    // teardown
  }

  /// *******************************************
  /// name:    GET DIRECTIONS
  /// input:   directions "Mix. Bake."
  /// output:  "Mix. Bake."
  ///*******************************************
  void getDirections() {
    // setup
    final r = Recipe();
    r.directions = 'Mix. Bake.';
    String d = 'junk';

    // exercise
    d = r.getDirections();

    // verify
    expect(d, 'Mix. Bake.');
    expect(r.directions, 'Mix. Bake.');
    // teardown
  }

  /// *******************************************
  /// name:    SET DIRECTIONS
  /// input:   (directions "old") -> "Boil. Serve."
  /// output:  "Boil. Serve."
  ///*******************************************
  void setDirections() {
    // setup
    final r = Recipe();
    r.directions = 'old';

    // exercise
    r.setDirections('Boil. Serve.');

    // verify
    expect(r.directions, 'Boil. Serve.');
    // teardown
  }

  /// *******************************************
  /// name:    GET TIME
  /// input:   time 45
  /// output:  "45"
  ///*******************************************
  void getTime() {
    // setup
    final r = Recipe();
    r.time = 45;
    String t = 'junk';

    // exercise
    t = r.getTime();

    // verify
    expect(t, contains('45'));
    expect(r.time, 45);
    // teardown
  }

  /// *******************************************
  /// name:    SET TIME
  /// input:   (time 99) -> 30
  /// output:  30
  ///*******************************************
  void setTime() {
    // setup
    final r = Recipe();
    r.time = 99;

    // exercise
    r.setTime(30);

    // verify
    expect(r.time, 30);
    // teardown
  }

  /*****************************************************************
   * INGREDIENTS
   *****************************************************************/

  /// *******************************************
  /// name:    ADD INGREDIENT ONE
  /// input:   "flour", 2.0, Unit.CUP, ""
  /// output:  one ingredient with those values
  ///*******************************************
  void addIngrs_one() {
    // setup
    final r = Recipe();

    // exercise
    r.addIngrs('flour', 2.0, Unit.CUP, '');

    // verify
    expect(r.ingredients.length, 1);
    expect(r.ingredients[0].name, 'flour');
    expect(r.ingredients[0].quantity, closeTo(2.0, 0.0001));
    expect(r.ingredients[0].unit, Unit.CUP);
    // teardown
  }

  /// *******************************************
  /// name:    ADD INGREDIENT TWO
  /// input:   "flour" then "sugar"
  /// output:  two ingredients, in the order added
  ///*******************************************
  void addIngrs_two() {
    // setup
    final r = Recipe();

    // exercise
    r.addIngrs('flour', 2.0, Unit.CUP, '');
    r.addIngrs('sugar', 1.5, Unit.TEASPOON, 'Topping');

    // verify
    expect(r.ingredients.length, 2);
    expect(r.ingredients[0].name, 'flour');
    expect(r.ingredients[1].name, 'sugar');
    expect(r.ingredients[1].unit, Unit.TEASPOON);
    // teardown
  }

  /*****************************************************************
   * TAGS
   *****************************************************************/

  /// *******************************************
  /// name:    ADD TAG ONE
  /// input:   no tags, addTag(5)
  /// output:  one tag with id 5
  ///*******************************************
  void addTag_one() {
    // setup
    final r = Recipe();

    // exercise
    r.addTag(5);

    // verify
    expect(r.tags.length, 1);
    expect(r.tags[0].id, 5);
    // teardown
  }

  /// *******************************************
  /// name:    REMOVE TAG ONE
  /// input:   tags {5, 6}, rmTag(5)
  /// output:  one tag left, id 6
  ///*******************************************
  void rmTag_one() {
    // setup
    final r = Recipe();
    r.addTag(5);
    r.addTag(6);

    // exercise
    r.rmTag(5);

    // verify
    expect(r.tags.length, 1);
    expect(r.tags[0].id, 6);
    // teardown
  }

  /*****************************************************************
   * PHOTO AND MEMORY
   *****************************************************************/

  /// *******************************************
  /// name:    SET PHOTO
  /// input:   "Pie", "pie.jpg", "Fresh out of the oven"
  /// output:  photo holds those values
  ///*******************************************
  void setPhoto() {
    // setup
    final r = Recipe();

    // exercise
    r.setPhoto('Pie', 'pie.jpg', 'Fresh out of the oven');

    // verify
    expect(r.photo.title, 'Pie');
    expect(r.photo.file, 'pie.jpg');
    expect(r.photo.desc, 'Fresh out of the oven');
    // teardown
  }

  /// *******************************************
  /// name:    SET MEMORY
  /// input:   "Birthday", 2026-10-26, "Mom's favorite"
  /// output:  memory holds those values
  ///*******************************************
  void setMemory() {
    // setup
    final r = Recipe();
    final date = DateTime(2026, 10, 26);

    // exercise
    r.setMemory('Birthday', date, "Mom's favorite");

    // verify
    expect(r.memory.title, 'Birthday');
    expect(r.memory.date, date);
    expect(r.memory.desc, "Mom's favorite");
    // teardown
  }
}

void main() {
  TestRecipe().run();
}
