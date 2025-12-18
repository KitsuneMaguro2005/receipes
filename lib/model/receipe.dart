 import 'package:receipes/model/ingredient.dart';

class Recipe {
 String imgLabel; // Label for the image
 String imageUrl; // URL of the image
 String Detail;
 List<Ingredient> ingredient;
 Recipe(this.imageUrl, this.imgLabel,this.Detail,this.ingredient);

  static List<Recipe> samples = [
    Recipe('assets/images/GreenThaiFishCurry.webp', 'GreenThaiFishCurry','aroi mak mak',
    [
      Ingredient(name: 'Fish Fillet', quantity: 300, unit: 'g'),
      Ingredient(name: 'Green Curry Paste', quantity: 2, unit: 'tbsp'),
      Ingredient(name: 'Coconut Milk', quantity: 2, unit: 'cup'),
      Ingredient(name: 'Sweet Basil Leaves', quantity: 1, unit: 'handful'),
    ]),
    Recipe('assets/images/padthai.webp','padthai','thai noodle you must try it',
    [
      Ingredient(name: 'Rice Noodles', quantity: 150, unit: 'g'),
      Ingredient(name: 'Shrimp', quantity: 5, unit: 'pcs'),
      Ingredient(name: 'Tamarind Paste', quantity: 2, unit: 'tbsp'),
      Ingredient(name: 'Bean Sprouts', quantity: 1, unit: 'cup'),
    ]),
    Recipe('assets/images/PumpkinCurry.webp','PumpkinCurry','this one is delicious',
    [
      Ingredient(name: 'Pumpkin chunks', quantity: 400, unit: 'g'),
      Ingredient(name: 'Red Curry Paste', quantity: 2, unit: 'tbsp'),
      Ingredient(name: 'Coconut Cream', quantity: 1, unit: 'cup'),
      Ingredient(name: 'Pork or Chicken', quantity: 200, unit: 'g'),
    ]),
    Recipe('assets/images/Thai red curry paste.webp','Thai red curry paste','eat with vegetables and sticky rice is good',
    [
     Ingredient(name: 'Dried Red Chilies', quantity: 10, unit: 'pcs'),
      Ingredient(name: 'Garlic', quantity: 5, unit: 'cloves'),
      Ingredient(name: 'Lemongrass', quantity: 2, unit: 'stalks'),
      Ingredient(name: 'Galangal', quantity: 1, unit: 'tsp'),
    ]),
  ];
}