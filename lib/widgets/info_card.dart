import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/constants.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 21),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.89,
            height: 133,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: ConstAnts.medicalGreen.withOpacity(.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(9),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 9,
                    ),
                    SizedBox(
                      width: 69,
                      height: 69,
                      child: Image.asset('assets/images/dev2.png'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hey there, You have 12 recipes that \nyou haven\'t tried yet',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              letterSpacing: 0.2,
                              color: ConstAnts.darkText.withOpacity(.8),
                            ),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'See Recipes',
                            style: GoogleFonts.varelaRound(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                letterSpacing: 0.2,
                                color: ConstAnts.medicalGreen.withOpacity(.8),
                              ),
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
