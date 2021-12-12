import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/constants.dart';
import 'package:potato_foods/controllers/fire_controller.dart';
import 'package:potato_foods/widgets/detail_view_appbar.dart';
import 'package:potato_foods/widgets/featured_header.dart';
import 'package:potato_foods/widgets/ingredient_row_card.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height,
      width: screenSize.width,
      color: ConstAnts.nearlyWhite,
      child: Scaffold(
        body: GetBuilder<FirestoreController>(
          builder: (_) {
            return Column(
              children: [
                const DetailScreenAppBar(),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Container(
                      // ignore: todo
                      height: screenSize.height * 2.9, // TODO: screen height
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
                                  Get.arguments[0],
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.varelaRound(
                                    textStyle: const TextStyle(
                                      fontSize: 21,
                                      letterSpacing: 0.27,
                                      color: ConstAnts.darkText,
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
                                      Get.arguments[3].toString(),
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.varelaRound(
                                        textStyle: TextStyle(
                                          fontSize: 11,
                                          letterSpacing: 0.2,
                                          color: ConstAnts.darkText
                                              .withOpacity(.69),
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
                                        color:
                                            ConstAnts.darkText.withOpacity(.5),
                                      ),
                                    ),
                                    Text(
                                      Get.arguments[4].toString(),
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.varelaRound(
                                        textStyle: TextStyle(
                                          fontSize: 11,
                                          letterSpacing: 0.2,
                                          color: ConstAnts.darkText
                                              .withOpacity(.69),
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
                              Get.arguments[2],
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 23,
                          ),
                          FeatureHeading(
                            header: 'Ingredients',
                            sider:
                                Get.arguments[5].length.toString() + ' Items',
                          ),
                          const SizedBox(
                            height: 19,
                          ),
                          // const IngredList(),
                          Get.arguments[5].map<Widget>(
                            (_) {
                              return IngredCard(
                                name: _,
                                ingredient: '🧀',
                                measure: '300 g',
                              );
                            },
                          ),
                          const SizedBox(
                            height: 23,
                          ),
                          FeatureHeading(
                            header: 'Method',
                            sider: Get.arguments[3].toString() +
                                Get.arguments[4].toString(),
                          ),
                          const SizedBox(
                            height: 23,
                          ),
                          // const MethodList(),
                          Get.arguments[6].map<Widget>(
                            (_) {
                              return IngredCard(
                                name: _,
                                ingredient: '🧀',
                                measure: '300 g',
                              );
                            },
                          ),
                          const SizedBox(
                            height: 23,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
