import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/theme.dart';
import 'package:potato_foods/widgets/detail_view_appbar.dart';
import 'package:potato_foods/widgets/featured_header.dart';
import 'package:potato_foods/widgets/ingredient_row.dart';
import 'package:potato_foods/widgets/method_list.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height,
      width: screenSize.width,
      color: nearlyWhite,
      child: Scaffold(
        body: Column(
          children: [
            const DetailScreenAppBar(),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
                  height: screenSize.height * 2.9,
                  padding: const EdgeInsets.symmetric(
                    vertical: 17,
                    // horizontal: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Stir Fried Mashed Potatoes',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.varelaRound(
                                textStyle: const TextStyle(
                                  fontSize: 21,
                                  letterSpacing: 0.27,
                                  color: darkText,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '30 Mins',
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 3,
                                  ),
                                  child: Container(
                                    width: 1.3,
                                    height: 11,
                                    color: darkText.withOpacity(.5),
                                  ),
                                ),
                                Text(
                                  '1 Serving',
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
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(
                          'assets/images/frie.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      const FeatureHeading(
                        header: 'Ingredients',
                        sider: '7 Items',
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      const IngredList(),
                      const SizedBox(
                        height: 23,
                      ),
                      const FeatureHeading(
                        header: 'Method',
                        sider: '30 Mins',
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      const MethodList(),
                      const SizedBox(
                        height: 23,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
