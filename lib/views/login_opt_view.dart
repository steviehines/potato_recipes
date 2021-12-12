import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/constants.dart';
import 'package:potato_foods/widgets/matter_button.dart';
import 'package:potato_foods/widgets/outlined_buton.dart';

class LoginOptionView extends StatelessWidget {
  const LoginOptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: sSize.width,
              height: sSize.height,
              child: Image.asset(
                'assets/images/welc.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  width: sSize.width,
                  height: sSize.height * .77,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.transparent,
                      ],
                      begin: Alignment.center,
                      end: Alignment.topCenter,
                    ),
                  ),
                )),
            Positioned(
              left: 35,
              bottom: 222,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cooking a \nDelicious Potato \nMeal Easily,',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.varelaRound(
                      textStyle: const TextStyle(
                        fontSize: 27,
                        letterSpacing: 0.27,
                        color: ConstAnts.nearlyWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Text(
                    'Discover more than 100 potato \nrecipes in your hands and just cook them \neasily!',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontSize: 14,
                        letterSpacing: 0.2,
                        color: ConstAnts.nearlyWhite.withOpacity(.7),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 11,
              left: 35,
              child: Column(
                children: [
                  Buton(
                    label: 'Sign In',
                    heigHt: 63,
                    widTh: sSize.width * .877,
                    bColOr: ConstAnts.medicalGreen,
                    splColOr: ConstAnts.nearlyWhite,
                    hovColOr: ConstAnts.medicalGreen,
                    screenSize: sSize,
                    press: () => Get.toNamed(
                      '/signIn',
                      // ignore: todo
                    ), //TODO: Route main sign-in button
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  OutlinedButt(
                    label: 'Sign Up',
                    paddingH: sSize.width * .373,
                    paddingV: 33,
                    radius: 17,
                    screenSize: sSize,
                    press: () => Get.toNamed(
                        // ignore: todo
                        '/signUp'), //TODO: Route main sign-up button
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
