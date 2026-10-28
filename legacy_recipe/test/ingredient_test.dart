import 'package:flutter_test/flutter_test.dart';
import 'package:legacy_recipe/models/ingredient.dart';
import 'package:legacy_recipe/models/unit.dart';

/// *******************************************
/// TEST INGREDIENT
/// Unit tests for Ingredient
///*******************************************
class TestIngredient {
  void run() {
    group('Ingredient', () {
      // constructor
      test('constructor_default', constructor_default);

      // getters
      test('getName', getName);
      test('getId', getId);
      test('getNum', getNum);
      test('getUnit', getUnit);
      test('getBuffer', getBuffer);

      // setters
      test('setName', setName);
      test('setId', setId);
      test('setNum', setNum);
      test('setUnit', setUnit);
      test('setGroup', setGroup);
      test('setBuffer', setBuffer);

      // scale
      test('scale_double', scale_double);
      test('scale_half', scale_half);
      test('scale_one', scale_one);
      test('scale_zero', scale_zero);
    });
  }

  /*****************************************************************
   * CONSTRUCTOR
   *****************************************************************/

  /// *******************************************
  /// name:    DEFAULT CONSTRUCTOR
  /// input:   nothing
  /// output:  empty name, id 0, num 0.0, Unit.NONE
  ///*******************************************
  void constructor_default() {
    // setup
    // exercise
    final i = Ingredient();

    // verify
    expect(i.name, '');
    expect(i.id, 0);
    expect(i.quantity, closeTo(0.0, 0.0001));
    expect(i.unit, Unit.NONE);
    // teardown
  }

  /*****************************************************************
   * GETTERS
   *****************************************************************/

  /// *******************************************
  /// name:    GET NAME
  /// input:   name "flour"
  /// output:  "flour"
  ///*******************************************
  void getName() {
    // setup
    final i = Ingredient();
    i.name = 'flour';
    String name = 'junk';

    // exercise
    name = i.getName();

    // verify
    expect(name, 'flour');
    expect(i.name, 'flour');
    // teardown
  }

  /// *******************************************
  /// name:    GET ID
  /// input:   id 4
  /// output:  4
  ///*******************************************
  void getId() {
    // setup
    final i = Ingredient();
    i.id = 4;
    int id = 99;

    // exercise
    id = i.getId();

    // verify
    expect(id, 4);
    expect(i.id, 4);
    // teardown
  }

  /// *******************************************
  /// name:    GET NUM
  /// input:   num 2.5
  /// output:  2.5
  ///*******************************************
  void getNum() {
    // setup
    final i = Ingredient();
    i.quantity = 2.5;
    double n = 99.9;

    // exercise
    n = i.getNum();

    // verify
    expect(n, closeTo(2.5, 0.0001));
    expect(i.quantity, closeTo(2.5, 0.0001));
    // teardown
  }

  /// *******************************************
  /// name:    GET UNIT
  /// input:   Unit.CUP
  /// output:  Unit.CUP
  ///*******************************************
  void getUnit() {
    // setup
    final i = Ingredient();
    i.unit = Unit.CUP;
    Unit u = Unit.NONE;

    // exercise
    u = i.getUnit();

    // verify
    expect(u, Unit.CUP);
    expect(i.unit, Unit.CUP);
    // teardown
  }

  /// *******************************************
  /// name:    GET BUFFER
  /// input:   buffer "a handful of nuts"
  /// output:  "a handful of nuts"
  ///*******************************************
  void getBuffer() {
    // setup
    final i = Ingredient();
    i.buffer = 'a handful of nuts';
    String? b = 'junk';

    // exercise
    b = i.getBuffer();

    // verify
    expect(b, 'a handful of nuts');
    expect(i.buffer, 'a handful of nuts');
    // teardown
  }

  /*****************************************************************
   * SETTERS
   *****************************************************************/

  /// *******************************************
  /// name:    SET NAME
  /// input:   (name "old") -> "sugar"
  /// output:  "sugar", other fields untouched
  ///*******************************************
  void setName() {
    // setup
    final i = Ingredient();
    i.name = 'old';
    i.id = 1;
    i.quantity = 3.0;

    // exercise
    i.setName('sugar');

    // verify
    expect(i.name, 'sugar');
    expect(i.id, 1);
    expect(i.quantity, closeTo(3.0, 0.0001));
    // teardown
  }

  /// *******************************************
  /// name:    SET ID
  /// input:   (id 99) -> 5
  /// output:  5, name untouched
  ///*******************************************
  void setId() {
    // setup
    final i = Ingredient();
    i.name = 'salt';
    i.id = 99;

    // exercise
    i.setId(5);

    // verify
    expect(i.id, 5);
    expect(i.name, 'salt');
    // teardown
  }

  /// *******************************************
  /// name:    SET NUM
  /// input:   (num 99.9) -> 0.75
  /// output:  0.75, name untouched
  ///*******************************************
  void setNum() {
    // setup
    final i = Ingredient();
    i.name = 'milk';
    i.quantity = 99.9;

    // exercise
    i.setNum(0.75);

    // verify
    expect(i.quantity, closeTo(0.75, 0.0001));
    expect(i.name, 'milk');
    // teardown
  }

  /// *******************************************
  /// name:    SET UNIT
  /// input:   (Unit.NONE) -> "TEASPOON"
  /// output:  Unit.TEASPOON
  ///*******************************************
  void setUnit() {
    // setup
    final i = Ingredient();
    i.unit = Unit.NONE;

    // exercise
    i.setUnit('TEASPOON');

    // verify
    expect(i.unit, Unit.TEASPOON);
    // teardown
  }

  /// *******************************************
  /// name:    SET GROUP
  /// input:   "Sauce"
  /// output:  no change to the other fields
  ///*******************************************
  void setGroup() {
    // setup
    final i = Ingredient();
    i.name = 'tomato';
    i.quantity = 2.0;

    // exercise
    i.setGroup('Sauce');

    // verify
    expect(i.name, 'tomato');
    expect(i.quantity, closeTo(2.0, 0.0001));
    // teardown
  }

  /// *******************************************
  /// name:    SET BUFFER
  /// input:   (buffer "old") -> "new"
  /// output:  buffer "new"
  ///*******************************************
  void setBuffer() {
    // setup
    final i = Ingredient();
    i.buffer = 'old';

    // exercise
    i.setBuffer('new');

    // verify
    expect(i.buffer, 'new');
    // teardown
  }

  /*****************************************************************
   * SCALE
   *****************************************************************/

  /// *******************************************
  /// name:    SCALE DOUBLE
  /// input:   num 2.5, factor 2.0
  /// output:  5.0
  ///*******************************************
  void scale_double() {
    // setup
    final i = Ingredient();
    i.quantity = 2.5;
    double factor = 2.0;

    // exercise
    i.scale(factor);

    // verify
    expect(i.quantity, closeTo(5.0, 0.0001));
    expect(factor, closeTo(2.0, 0.0001));
    // teardown
  }

  /// *******************************************
  /// name:    SCALE HALF
  /// input:   num 3.0, factor 0.5
  /// output:  1.5
  ///*******************************************
  void scale_half() {
    // setup
    final i = Ingredient();
    i.quantity = 3.0;

    // exercise
    i.scale(0.5);

    // verify
    expect(i.quantity, closeTo(1.5, 0.0001));
    // teardown
  }

  /// *******************************************
  /// name:    SCALE ONE
  /// input:   num 4.2, factor 1.0
  /// output:  4.2 (unchanged)
  ///*******************************************
  void scale_one() {
    // setup
    final i = Ingredient();
    i.quantity = 4.2;

    // exercise
    i.scale(1.0);

    // verify
    expect(i.quantity, closeTo(4.2, 0.0001));
    // teardown
  }

  /// *******************************************
  /// name:    SCALE ZERO
  /// input:   num 4.2, factor 0.0
  /// output:  0.0
  ///*******************************************
  void scale_zero() {
    // setup
    final i = Ingredient();
    i.quantity = 4.2;

    // exercise
    i.scale(0.0);

    // verify
    expect(i.quantity, closeTo(0.0, 0.0001));
    // teardown
  }
}

void main() {
  TestIngredient().run();
}
