import 'package:flutter_test/flutter_test.dart';
import 'package:legacy_recipe/models/unit.dart';

/// *******************************************
/// TEST UNIT
/// Unit tests for the Unit enumeration
///*******************************************
class TestUnit {
  void run() {
    group('Unit', () {
      test('abbreviate_none', abbreviate_none);
      test('abbreviate_teaspoon', abbreviate_teaspoon);
      test('abbreviate_tablespoon', abbreviate_tablespoon);
      test('abbreviate_gram', abbreviate_gram);
      test('abbreviate_neverEmptyExceptNone', abbreviate_neverEmptyExceptNone);
    });
  }

  /// *******************************************
  /// name:    ABBREVIATE NONE
  /// input:   Unit.NONE
  /// output:  ""
  ///*******************************************
  void abbreviate_none() {
    // setup
    const unit = Unit.NONE;
    String s = 'junk';

    // exercise
    s = unit.abbreviate();

    // verify
    expect(s, '');
    // teardown
  }

  /// *******************************************
  /// name:    ABBREVIATE TEASPOON
  /// input:   Unit.TEASPOON
  /// output:  "tsp"
  ///*******************************************
  void abbreviate_teaspoon() {
    // setup
    const unit = Unit.TEASPOON;
    String s = 'junk';

    // exercise
    s = unit.abbreviate();

    // verify
    expect(s, 'tsp');
    // teardown
  }

  /// *******************************************
  /// name:    ABBREVIATE TABLESPOON
  /// input:   Unit.TABLESPOON
  /// output:  "tbsp"
  ///*******************************************
  void abbreviate_tablespoon() {
    // setup
    const unit = Unit.TABLESPOON;
    String s = 'junk';

    // exercise
    s = unit.abbreviate();

    // verify
    expect(s, 'tbsp');
    // teardown
  }

  /// *******************************************
  /// name:    ABBREVIATE GRAM
  /// input:   Unit.GRAM
  /// output:  "g"
  ///*******************************************
  void abbreviate_gram() {
    // setup
    const unit = Unit.GRAM;
    String s = 'junk';

    // exercise
    s = unit.abbreviate();

    // verify
    expect(s, 'g');
    // teardown
  }

  /// *******************************************
  /// name:    ABBREVIATE EVERY UNIT
  /// input:   every Unit value
  /// output:  non-empty string for all but NONE
  ///*******************************************
  void abbreviate_neverEmptyExceptNone() {
    // setup
    final units = Unit.values.where((u) => u != Unit.NONE);

    // exercise / verify
    for (final u in units) {
      expect(u.abbreviate(), isNotEmpty, reason: '$u has no abbreviation');
    }
    // teardown
  }
}

void main() {
  TestUnit().run();
}
