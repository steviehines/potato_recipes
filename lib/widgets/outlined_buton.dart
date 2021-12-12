import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/constants.dart';
import 'package:potato_foods/components/theme.dart';

class OutlinedButt extends StatelessWidget {
  const OutlinedButt({
    Key? key,
    required this.label,
    required this.screenSize,
    this.press,
    this.radius,
    this.paddingH,
    this.paddingV,
  }) : super(key: key);

  final String label;
  final Size screenSize;
  final GestureTapCallback? press;
  final double? radius, paddingH, paddingV;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      style: TextButton.styleFrom(
        backgroundColor: Colors.black12,
        padding: EdgeInsets.symmetric(
          horizontal: paddingH!,
          vertical: paddingV!,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
        ),
        side: const BorderSide(
          color: ConstAnts.nearlyWhite,
          width: 2,
        ),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: GoogleFonts.varelaRound(
          color: ConstAnts.nearlyWhite,
          textStyle: lightTheme.primaryTextTheme.button,
        ),
      ),
    );
  }
}
