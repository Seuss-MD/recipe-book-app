// =============================================================================
// File:        tag.dart
// Project:     Project Name
// Description: Brief description
//
// Author:      Samuel Evans
// Created:     2026-10-26
// =============================================================================

/// *******************************************
/// TAG
/// A label (e.g. "dessert", "vegan") that can be attached to recipes
///*******************************************
class Tag {
  int id;
  String name;

  Tag() : id = 0, name = '';

  int getId() => id;
  String getName() => name;

  void setId(int id) => this.id = id;
  void setName(String name) => this.name = name;
}
