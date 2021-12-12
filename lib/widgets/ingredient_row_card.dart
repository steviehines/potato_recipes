import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/constants.dart';

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
              color: ConstAnts.medicalGreen.withOpacity(.05),
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
                            color: ConstAnts.darkText.withOpacity(.8),
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
                        color: ConstAnts.darkText.withOpacity(.8),
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
