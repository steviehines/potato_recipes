import 'package:cloud_firestore/cloud_firestore.dart';

class RecipeModel {
  const RecipeModel({
    required this.name,
    required this.describe,
    required this.image,
    required this.prepTime,
    required this.cookTime,
    required this.ingredients,
    required this.method,
  });

  final String name, describe, image;
  final double prepTime, cookTime;
  final List<String> ingredients, method;

  static const nAME = "name";
  static const dESCRIBE = "describe";
  static const iMAGE = "image";
  static const pREPTIME = "prepTime";
  static const cOOKTIME = "cookTime";
  static const iNGREDIENTS = "ingredients";
  static const mETHOD = "method";

  static RecipeModel fromSnapshot(DocumentSnapshot _) {
    RecipeModel recipe = RecipeModel(
      name: _[nAME],
      describe: _[dESCRIBE],
      image: _[iMAGE],
      prepTime: _[pREPTIME],
      cookTime: _[cOOKTIME],
      ingredients: _[iNGREDIENTS],
      method: _[mETHOD],
    );
    return recipe;
  }
}
