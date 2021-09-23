import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/theme.dart';
import 'package:potato_foods/widgets/tl_card.dart';

class TL extends StatelessWidget {
  const TL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 21, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Trending Recipe',
            textAlign: TextAlign.left,
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 22,
                letterSpacing: 0.27,
                color: medicalGreen.withOpacity(.9),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Flexible(
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: List<Widget>.generate(
                17,
                (int index) {
                  return const TLCard();
                },
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 11.0,
                crossAxisSpacing: 9,
                childAspectRatio: .66,
              ),
            ),
          )
        ],
      ),
    );
  }
}
