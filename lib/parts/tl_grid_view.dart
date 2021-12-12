import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/constants.dart';
import 'package:potato_foods/controllers/fire_controller.dart';
import 'package:potato_foods/widgets/tl_card.dart';

class TLGrid extends StatelessWidget {
  const TLGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        left: 21,
        right: 16,
        bottom: 11,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trending Recipe',
            textAlign: TextAlign.left,
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 22,
                letterSpacing: 0.27,
                color: ConstAnts.medicalGreen.withOpacity(.9),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            color: ConstAnts.medicalGreen,
            height: 9,
          ),
          SizedBox(
            height: 666,
            child: GetBuilder<FirestoreController>(
              builder: ($) {
                print($);
                return GridView.builder(
                  shrinkWrap: true,
                  itemCount: $.repo.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 5.0,
                  ),
                  itemBuilder: (_, index) => GestureDetector(
                    onTap: () {
                      Get.offAndToNamed(
                        '/detail',
                        // ignore: todo
                        //TODO: Route grid cards to details
                        arguments: [
                          $.repo[index].name,
                          $.repo[index].describe,
                          $.repo[index].image,
                          $.repo[index].prepTime,
                          $.repo[index].cookTime,
                          $.repo[index].ingredients,
                          $.repo[index].method,
                        ],
                      );
                    },
                    child: TLCard(
                      screenSize: MediaQuery.of(context).size,
                      borderRadi: 9,
                      image: $.repo[index].image,
                      name: $.repo[index].name,
                      description: $.repo[index].cookTime.toString(),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            color: ConstAnts.medicalGreen,
            height: 9,
          ),
        ],
      ),
    );
  }
}
