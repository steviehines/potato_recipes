import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:potato_foods/components/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

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
            height: 64,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: dullGrey,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(9),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: dullerGrey.withOpacity(.3),
                      offset: const Offset(-3, 1),
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: TextFormField(
                          cursorColor: medicalGreen.withOpacity(.5),
                          style: GoogleFonts.varelaRound(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              letterSpacing: 0.27,
                              color: darkText,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Search Recipes',
                            border: InputBorder.none,
                            helperStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: medicalGreen,
                            ),
                            labelStyle: GoogleFonts.varelaRound(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                letterSpacing: 0.2,
                                color: dullerGrey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          onEditingComplete: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: GestureDetector(
                          onTap: () {
                            Get.toNamed('/login');
                          },
                          child: const Icon(
                            Icons.search,
                            color: dullerGrey,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          )
        ],
      ),
    );
  }
}
