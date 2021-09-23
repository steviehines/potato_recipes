import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 21,
        vertical: 11,
      ),
      child: Material(
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
                  color: nearlyWhite,
                  textStyle: lightThemeData.primaryTextTheme.button,
                ),
              ),
            ),
            onTap: press,
          )),
    );
  }
}

class OutlinedButt extends StatelessWidget {
  const OutlinedButt({
    Key? key,
    required this.label,
    required this.screenSize,
    this.press,
    this.heigHt,
    this.widTh,
    this.bColOr,
  }) : super(key: key);

  final String label;
  final Size screenSize;
  final GestureTapCallback? press;
  final double? heigHt;
  final double? widTh;
  final Color? bColOr;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      style: TextButton.styleFrom(
        backgroundColor: Colors.black,
        primary: Colors.black87,
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 20,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 11,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          border: Border.all(
            color: nearlyWhite,
            width: 1.1,
          ),
        ),
        height: heigHt,
        width: widTh,
        alignment: Alignment.center,
        child: Text(
          label,
          textAlign: TextAlign.left,
          style: GoogleFonts.varelaRound(
            color: nearlyWhite,
            textStyle: lightThemeData.primaryTextTheme.button,
          ),
        ),
      ),
    );
  }
}
