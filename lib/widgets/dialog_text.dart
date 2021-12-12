import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/constants.dart';

class DialogText extends StatelessWidget {
  const DialogText({
    Key? key,
    required this.screenSize,
    this.align,
    this.text1,
    this.text2,
  }) : super(key: key);

  final Size screenSize;
  final AlignmentGeometry? align;
  final String? text1, text2;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: align!,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1!,
            style: GoogleFonts.varelaRound(
              textStyle: const TextStyle(
                fontSize: 29,
                color: ConstAnts.medicalGreen,
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * .005,
          ),
          Text(
            text2!,
            style: GoogleFonts.varelaRound(
              textStyle: const TextStyle(
                fontSize: 14,
                color: ConstAnts.darkText,
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * .005,
          ),
        ],
      ),
    );
  }
}
