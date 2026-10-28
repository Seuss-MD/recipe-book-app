// =============================================================================
// Project:     Legacy Recipe
//
// File:        unit.dart
// Description: Brief description
//
// Author:      Samuel Evans
// Created:     2026-10-26
// =============================================================================

/// *******************************************
/// UNIT
/// A unit of measurement (e.g. "grams", "ounces")
///*******************************************
enum Unit {
  NONE,
  TEASPOON,
  TABLESPOON,
  CUP,
  GRAM,
  OUNCE
}

// =============================================================================
// Name:  Abbreviate
// Description: Returns the abbreviation for a given unit
// Input: Unit
// Output: String
// =============================================================================
extension UnitAbbreviation on Unit {
  String abbreviate() {
    switch (this) {
      case Unit.NONE:
        return '';
      case Unit.TEASPOON:
        return 'tsp';
      case Unit.TABLESPOON:
        return 'tbsp';
      case Unit.CUP:
        return 'cup';
      case Unit.GRAM:
        return 'g';
      case Unit.OUNCE:
        return 'oz';
    }
  }
}