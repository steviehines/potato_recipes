import 'package:flutter/material.dart';
import 'package:potato_foods/components/theme.dart';

class TLCard extends StatelessWidget {
  const TLCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {},
      child: SizedBox(
        // height: 330,
        child: Stack(
          alignment: const Alignment(.9, 0),
          children: <Widget>[
            AspectRatio(
              aspectRatio: .7,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(9)),
                child: Image.asset(
                  'assets/images/Mint Mashed Potatoes.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, right: 16, left: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: kDark.withOpacity(.3),
                  borderRadius: const BorderRadius.all(Radius.circular(11.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: kDark.withOpacity(0.2),
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 6.0),
                  ],
                ),
                child: AspectRatio(
                    aspectRatio: 2,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 16, left: 9, right: 8),
                              child: Text(
                                'Stir Fri',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  letterSpacing: 0.27,
                                  color: kDark.withOpacity(.8),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 16, left: 16, right: 16),
                          child: Text(
                            '40 min, 2 Serve',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 12,
                              letterSpacing: 0.27,
                              color: kDark,
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
