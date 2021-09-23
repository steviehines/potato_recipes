import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/theme.dart';

class FeatureHeading extends StatelessWidget {
  const FeatureHeading({
    Key? key,
    required this.header,
    this.sider,
  }) : super(key: key);

  final String header;
  final String? sider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            header,
            textAlign: TextAlign.left,
            style: GoogleFonts.varelaRound(
              textStyle: const TextStyle(
                fontSize: 17,
                letterSpacing: 0.27,
                color: darkText,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            sider!,
            textAlign: TextAlign.left,
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 11,
                letterSpacing: 0.2,
                color: darkText.withOpacity(.69),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
