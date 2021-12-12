import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/constants.dart';

class AppBarHeadR extends StatelessWidget {
  const AppBarHeadR({
    Key? key,
    this.user,
    this.profilePic,
  }) : super(key: key);
  final String? user, profilePic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        left: 21,
        right: 18,
        bottom: 9,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user!,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                      fontSize: 22,
                      letterSpacing: 0.27,
                      color: ConstAnts.medicalGreen.withOpacity(.9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'What do you want to cook today?',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.varelaRound(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      letterSpacing: 0.2,
                      color: ConstAnts.darkText,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 44,
            height: 44,
            child: Image.asset(profilePic!),
          ),
        ],
      ),
    );
  }
}
