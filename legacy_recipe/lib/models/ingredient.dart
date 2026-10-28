// =============================================================================
// Project:     Legacy Recipe
//
// File:        ingredient.dart
// Description: Brief description
//
// Author:      Samuel Evans
// Created:     2026-10-26
// =============================================================================

import 'package:legacy_recipe/models/unit.dart';

// =============================================================================
// Name:  Class Name
// Description: Brief description
// =============================================================================
class Ingredient {
  String name = '';
  int id = 0;
  double quantity = 0.0;
  Unit unit = Unit.NONE;
  String? buffer;
  String group = '';

  Ingredient([String name = '', int id = 0, double quantity = 0.0, Unit unit = Unit.NONE, String? buffer, String group = ''])
      : this.name = name,
        this.id = id,
        this.quantity = quantity,
        this.unit = unit,
        this.buffer = buffer,
        this.group = group;
  
  // getters
  String getName() => name;
  int getId() => id;
  double getNum() => quantity;
  Unit getUnit() => unit;
  String? getBuffer() => buffer;
  String getGroup() => group;


  // setters
  void setName(String n) => name = n;
  void setId(int i) => id = i;
  void setNum(double n) => quantity = n;
  void setUnit(String u) => unit = Unit.values.firstWhere((e) => e.toString() == 'Unit.' + u);
  void setBuffer(String? b) => buffer = b;
  void setGroup(String g) => group = g;

  // scale
  void scale(double factor) => quantity *= factor;

}