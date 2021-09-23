import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/theme.dart';

class IngredCard extends StatelessWidget {
  const IngredCard({
    Key? key,
    required this.ingredient,
    required this.name,
    required this.measure,
  }) : super(key: key);

  final String ingredient;
  final String name;
  final String measure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 69,
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Container(
            decoration: BoxDecoration(
              color: medicalGreen.withOpacity(.05),
              borderRadius: const BorderRadius.all(
                Radius.circular(9),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ingredient,
                        style: const TextStyle(fontSize: 19),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Text(
                        name,
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            letterSpacing: 0.1,
                            color: darkText.withOpacity(.8),
                          ),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Text(
                    measure,
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        letterSpacing: 0.2,
                        color: darkText.withOpacity(.8),
                      ),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

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
