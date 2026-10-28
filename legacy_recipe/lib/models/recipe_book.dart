// =============================================================================
// Project:     Legacy Recipe
//
// File:        recipe_book.dart
// Description: Brief description
//
// Author:      Samuel Evans
// Created:     2026-10-26
// =============================================================================

import 'package:legacy_recipe/models/recipe.dart';
import 'package:legacy_recipe/models/tag.dart';

// =============================================================================
// Name:  RecipeBook
// Description: Holds every recipe and the tags available to them
// =============================================================================
class RecipeBook {
  List<Recipe> recipes = [];
  List<Tag> tagLi = [];
  int nextTagId = 1;

  RecipeBook();

  // recipes
  List<Recipe> getRecipes() => recipes;
  Recipe getRecipe(int id) => recipes.firstWhere((r) => r.id == id);
  void addRecipe(int id, String name) => recipes.add(Recipe(id, name));
  void deleteRecipe(Recipe recipe) => recipes.remove(recipe);
  List<Recipe> search(String query) =>
      recipes.where((r) => r.name.toLowerCase().contains(query.toLowerCase())).toList();
  

  // tags
  List<Tag> getTagLi() => tagLi;
  Tag getTag(int id) => tagLi.firstWhere((t) => t.id == id);
  void createTag(String name) => tagLi.add(Tag()
    ..setId(nextTagId++)
    ..setName(name));
  void rmTag(int id) => tagLi.removeWhere((t) => t.id == id);
}
