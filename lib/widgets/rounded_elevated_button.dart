import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/constants.dart';
import 'package:potato_foods/components/theme.dart';

class RoundedElevatedButt extends StatelessWidget {
  const RoundedElevatedButt({
    Key? key,
    required this.title,
    this.paddingH,
    this.paddingV,
    this.radius,
    this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback? press;
  final double? radius, paddingH, paddingV;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press!,
      child: Text(
        title,
        style: GoogleFonts.varelaRound(
          color: ConstAnts.nearlyWhite,
          textStyle: lightTheme.primaryTextTheme.button,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: ConstAnts.medicalGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
        ),
        padding: EdgeInsets.symmetric(
          vertical: paddingV!,
          horizontal: paddingH!,
        ),
      ),
    );
  }
}
