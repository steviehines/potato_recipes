import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/theme.dart';
import 'package:potato_foods/widgets/a_button.dart';

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
                        color: nearlyWhite,
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
                        color: nearlyWhite.withOpacity(.7),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 11,
              left: 19,
              child: Column(
                children: [
                  Buton(
                    label: 'Sign In',
                    heigHt: 55,
                    widTh: sSize.width * .8,
                    bColOr: kMedi,
                    splColOr: nearlyWhite,
                    hovColOr: medicalGreen,
                    screenSize: sSize,
                    press: () => Get.toNamed('/signIn'),
                  ),
                  OutlinedButt(
                    label: 'Sign Up',
                    heigHt: 55,
                    widTh: sSize.width * .8,
                    bColOr: Colors.amber,
                    screenSize: sSize,
                    press: () => Get.toNamed('/signUp'),
                  ),
                  const SizedBox(
                    height: 21,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
