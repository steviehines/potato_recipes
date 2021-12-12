import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/constants.dart';
import 'package:potato_foods/components/theme.dart';

class Buton extends StatelessWidget {
  const Buton({
    Key? key,
    required this.label,
    required this.screenSize,
    this.press,
    this.heigHt,
    this.widTh,
    this.bColOr,
    this.splColOr,
    this.hovColOr,
  }) : super(key: key);

  final String label;
  final Size screenSize;
  final GestureTapCallback? press;
  final double? heigHt;
  final double? widTh;
  final Color? bColOr;
  final Color? splColOr;
  final Color? hovColOr;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: bColOr,
        elevation: 4,
        borderRadius: BorderRadius.circular(17),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          splashColor: splColOr,
          hoverColor: hovColOr,
          child: AnimatedContainer(
            duration: const Duration(
              seconds: 2,
            ),
            height: heigHt,
            width: widTh,
            alignment: Alignment.center,
            child: Text(
              label,
              textAlign: TextAlign.left,
              style: GoogleFonts.varelaRound(
                color: ConstAnts.nearlyWhite,
                textStyle: lightTheme.primaryTextTheme.button,
              ),
            ),
          ),
          onTap: press,
        ));
  }
}
