import 'package:flutter/material.dart';
import 'package:potato_foods/widgets/ingredient_row_card.dart';

class IngredList extends StatelessWidget {
  const IngredList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        IngredCard(
          name: 'Permesan Cheese',
          ingredient: '🧀',
          measure: '300 g',
        ),
        IngredCard(
          name: 'Eggs',
          ingredient: '🥚',
          measure: '2 pcs',
        ),
        IngredCard(
          name: 'Fresh Shrimp',
          ingredient: '🍤',
          measure: '1/2 Kg',
        ),
        IngredCard(
          name: 'Potatoes',
          ingredient: '🥔',
          measure: '1/2 Kg',
        ),
        IngredCard(
          name: 'Chilli Pepper',
          ingredient: '🌶️',
          measure: '4 Tbsp',
        ),
        IngredCard(
          name: 'Tomato Ketchup',
          ingredient: '🍅',
          measure: '6 Tbsp',
        ),
        IngredCard(
          name: 'Onion',
          ingredient: '🍈',
          measure: '2 pcs',
        ),
      ],
    );
  }
}
