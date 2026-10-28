import 'package:flutter_test/flutter_test.dart';
import 'package:legacy_recipe/models/tag.dart';

/// *******************************************
/// TEST TAG
/// Unit tests for Tag
///*******************************************
class TestTag {
  void run() {
    group('Tag', () {
      test('constructor_default', constructor_default);
      test('getId', getId);
      test('getName', getName);
      test('setId', setId);
      test('setName', setName);
    });
  }

  /// *******************************************
  /// name:    DEFAULT CONSTRUCTOR
  /// input:   nothing
  /// output:  id 0, empty name
  ///*******************************************
  void constructor_default() {
    // setup
    // exercise
    final t = Tag();

    // verify
    expect(t.id, 0);
    expect(t.name, '');
    // teardown
  }

  /// *******************************************
  /// name:    GET ID
  /// input:   id 7
  /// output:  7
  ///*******************************************
  void getId() {
    // setup
    final t = Tag();
    t.id = 7;
    int id = 99;

    // exercise
    id = t.getId();

    // verify
    expect(id, 7);
    expect(t.id, 7);
    // teardown
  }

  /// *******************************************
  /// name:    GET NAME
  /// input:   name "dessert"
  /// output:  "dessert"
  ///*******************************************
  void getName() {
    // setup
    final t = Tag();
    t.name = 'dessert';
    String name = 'junk';

    // exercise
    name = t.getName();

    // verify
    expect(name, 'dessert');
    expect(t.name, 'dessert');
    // teardown
  }

  /// *******************************************
  /// name:    SET ID
  /// input:   (id 99) -> 3
  /// output:  id 3
  ///*******************************************
  void setId() {
    // setup
    final t = Tag();
    t.id = 99;

    // exercise
    t.setId(3);

    // verify
    expect(t.id, 3);
    // teardown
  }

  /// *******************************************
  /// name:    SET NAME
  /// input:   (name "old") -> "vegan"
  /// output:  name "vegan"
  ///*******************************************
  void setName() {
    // setup
    final t = Tag();
    t.name = 'old';

    // exercise
    t.setName('vegan');

    // verify
    expect(t.name, 'vegan');
    // teardown
  }
}

void main() {
  TestTag().run();
}
