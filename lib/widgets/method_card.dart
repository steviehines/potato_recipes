import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/constants.dart';

class MethodCard extends StatelessWidget {
  const MethodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Card(
        color: ConstAnts.medicalGreen.withOpacity(.06),
        elevation: 55,
        shadowColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 9,
            vertical: 9,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                FontAwesomeIcons.solidCircle,
                size: 11,
                color: ConstAnts.darkText.withOpacity(.8),
              ),
              Text(
                'Set a small bowl upside-down inside a large \nbowl. Stand the corn cobs on the small bowl \nand cut off the kernels. Remove \nthe small bowl.',
                style: GoogleFonts.varelaRound(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    letterSpacing: 0.1,
                    color: ConstAnts.darkText.withOpacity(.89),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
