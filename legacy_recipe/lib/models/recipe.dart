// =============================================================================
// Project:     Legacy Recipe
//
// File:        recipe.dart
// Description: Brief description
//
// Author:      Samuel Evans
// Created:     2026-10-26
// =============================================================================


import 'package:legacy_recipe/models/memory.dart';
import 'package:legacy_recipe/models/tag.dart';
import 'package:legacy_recipe/models/ingredient.dart';
import 'package:legacy_recipe/models/photo.dart';
import 'package:legacy_recipe/models/unit.dart';

// =============================================================================
// Name:  Class Name
// Description: Brief description
// =============================================================================
class Recipe {
  late int id;
  late String name;
  late List<Ingredient> ingredients;
  late List<Tag> tags;
  late Photo photo;
  late Memory memory;
  late int serving;
  late int time;
  late String directions;

  Recipe([int id = -99, String name = '', List<Ingredient>? ingredients, List<Tag>? tags, Photo? photo, Memory? memory])
      : this.id = id,
        this.name = name,
        this.ingredients = ingredients ?? [],
        this.tags = tags ?? [],
        this.photo = photo ?? Photo(),
        this.memory = memory ?? Memory(),
        this.serving = -99,
        this.time = 0,
        this.directions = '';

  int getId() => id;
  String getName() => name;
  // String getDescription() => description;
  List<Ingredient> getIngredients() => ingredients;
  List<Tag> getTags() => tags;
  Photo getPhoto() => photo;
  Memory getMemory() => memory;
  int getServing() => serving;
  String getTime() => '$time';
  String getDirections() => directions;

  void setId(int id) => this.id = id;
  void setName(String name) => this.name = name;
  // void setDescription(String description) => this.description = description;
  void setIngredients(List<Ingredient> ingredients) => this.ingredients = ingredients;
  void setTags(List<Tag> tags) => this.tags = tags;
  void setPhoto(String title, String file, String desc) => photo = Photo(title, desc, file);
  void setMemory(String title, DateTime date, String desc) => memory = Memory(title, desc)..setDate(date);
  void setServing(int serving) => this.serving = serving;
  void setTime(int time) => this.time = time;
  void setDirections(String directions) => this.directions = directions;

  void addIngr(Ingredient ingr) => ingredients.add(ingr);
  void addIngrs(String name, double quantity, Unit unit, String group) =>
      ingredients.add(Ingredient(name, ingredients.length, quantity, unit)..setGroup(group));
  void rmIngr(Ingredient ingr) => ingredients.remove(ingr);
  void addTag(int id) => tags.add(Tag()..setId(id));
  void rmTag(int id) => tags.removeWhere((t) => t.id == id);

}