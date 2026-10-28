import 'package:flutter_test/flutter_test.dart';
import 'package:legacy_recipe/models/recipe_book.dart';

/// *******************************************
/// TEST RECIPE BOOK
/// Unit tests for RecipeBook
///*******************************************
class TestRecipeBook {
  void run() {
    group('RecipeBook', () {
      // constructor
      test('constructor_default', constructor_default);

      // recipes
      test('addRecipe_one', addRecipe_one);
      test('addRecipe_two', addRecipe_two);
      test('getRecipe_found', getRecipe_found);
      test('deleteRecipe_one', deleteRecipe_one);
      test('search_match', search_match);
      test('search_noMatch', search_noMatch);
      

      // tags
      test('createTag_one', createTag_one);
      test('getTag_found', getTag_found);
      test('rmTag_one', rmTag_one);
    });
  }

  /*****************************************************************
   * CONSTRUCTOR
   *****************************************************************/

  /// *******************************************
  /// name:    DEFAULT CONSTRUCTOR
  /// input:   nothing
  /// output:  no recipes, no tags
  ///*******************************************
  void constructor_default() {
    // setup
    // exercise
    final book = RecipeBook();

    // verify
    expect(book.recipes, isEmpty);
    expect(book.tagLi, isEmpty);
    // teardown
  }

  /*****************************************************************
   * RECIPES
   *****************************************************************/

  /// *******************************************
  /// name:    ADD RECIPE ONE
  /// input:   empty book, addRecipe(1, "Pie")
  /// output:  one recipe, id 1, name "Pie"
  ///*******************************************
  void addRecipe_one() {
    // setup
    final book = RecipeBook();

    // exercise
    book.addRecipe(1, 'Pie');

    // verify
    expect(book.recipes.length, 1);
    expect(book.recipes[0].id, 1);
    expect(book.recipes[0].name, 'Pie');
    // teardown
  }

  /// *******************************************
  /// name:    ADD RECIPE TWO
  /// input:   addRecipe(1, "Pie"), addRecipe(2, "Soup")
  /// output:  two recipes, in the order added
  ///*******************************************
  void addRecipe_two() {
    // setup
    final book = RecipeBook();

    // exercise
    book.addRecipe(1, 'Pie');
    book.addRecipe(2, 'Soup');

    // verify
    expect(book.recipes.length, 2);
    expect(book.recipes[0].name, 'Pie');
    expect(book.recipes[1].name, 'Soup');
    // teardown
  }

  /// *******************************************
  /// name:    GET RECIPE FOUND
  /// input:   recipes {1 Pie, 2 Soup}, getRecipe(2)
  /// output:  the Soup recipe
  ///*******************************************
  void getRecipe_found() {
    // setup
    final book = RecipeBook();
    book.addRecipe(1, 'Pie');
    book.addRecipe(2, 'Soup');

    // exercise
    final r = book.getRecipe(2);

    // verify
    expect(r.id, 2);
    expect(r.name, 'Soup');
    // teardown
  }

  /// *******************************************
  /// name:    DELETE RECIPE ONE
  /// input:   recipes {1 Pie, 2 Soup}, delete Pie
  /// output:  only Soup remains
  ///*******************************************
  void deleteRecipe_one() {
    // setup
    final book = RecipeBook();
    book.addRecipe(1, 'Pie');
    book.addRecipe(2, 'Soup');
    final pie = book.getRecipe(1);

    // exercise
    book.deleteRecipe(pie);

    // verify
    expect(book.recipes.length, 1);
    expect(book.recipes[0].name, 'Soup');
    // teardown
  }

  /// *******************************************
  /// name:    SEARCH MATCH
  /// input:   recipes {Apple Pie, Tomato Soup}, "pie"
  /// output:  just Apple Pie
  ///*******************************************
  void search_match() {
    // setup
    final book = RecipeBook();
    book.addRecipe(1, 'Apple Pie');
    book.addRecipe(2, 'Tomato Soup');

    // exercise
    final results = book.search('pie');

    // verify
    expect(results.length, 1);
    expect(results[0].name, 'Apple Pie');
    // teardown
  }

  /// *******************************************
  /// name:    SEARCH NO MATCH
  /// input:   recipes {Apple Pie}, "xyz"
  /// output:  empty list
  ///*******************************************
  void search_noMatch() {
    // setup
    final book = RecipeBook();
    book.addRecipe(1, 'Apple Pie');

    // exercise
    final results = book.search('xyz');

    // verify
    expect(results, isEmpty);
    // teardown
  }

  /*****************************************************************
   * TAGS
   *****************************************************************/

  /// *******************************************
  /// name:    CREATE TAG ONE
  /// input:   empty book, createTag("dessert")
  /// output:  one tag named "dessert"
  ///*******************************************
  void createTag_one() {
    // setup
    final book = RecipeBook();

    // exercise
    book.createTag('dessert');

    // verify
    expect(book.tagLi.length, 1);
    expect(book.tagLi[0].name, 'dessert');
    // teardown
  }

  /// *******************************************
  /// name:    GET TAG FOUND
  /// input:   one tag "vegan", getTag(its id)
  /// output:  the "vegan" tag
  ///*******************************************
  void getTag_found() {
    // setup
    final book = RecipeBook();
    book.createTag('vegan');
    final id = book.tagLi[0].id;

    // exercise
    final t = book.getTag(id);

    // verify
    expect(t.id, id);
    expect(t.name, 'vegan');
    // teardown
  }

  /// *******************************************
  /// name:    REMOVE TAG ONE
  /// input:   tags {vegan, dessert}, rmTag(vegan's id)
  /// output:  only "dessert" remains
  ///*******************************************
  void rmTag_one() {
    // setup
    final book = RecipeBook();
    book.createTag('vegan');
    book.createTag('dessert');
    final id = book.tagLi[0].id;

    // exercise
    book.rmTag(id);

    // verify
    expect(book.tagLi.length, 1);
    expect(book.tagLi[0].name, 'dessert');
    // teardown
  }
}

void main() {
  TestRecipeBook().run();
}
