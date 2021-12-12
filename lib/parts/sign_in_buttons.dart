import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:potato_foods/controllers/auth_controller.dart';
import 'package:potato_foods/widgets/rounded_elevated_button.dart';
import 'package:potato_foods/widgets/text_with_text_button.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({
    Key? key,
    required this.sSize,
    required this.fomKey,
    required this.emaiLController,
    required this.passWController,
  }) : super(key: key);

  final Size sSize;

  final GlobalKey<FormState>? fomKey;

  final TextEditingController? emaiLController;
  final TextEditingController? passWController;

  @override
  Widget build(BuildContext context) {
    final _authControl = Get.find<AuthController>();

    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () =>
                // ignore: todo
                Get.toNamed('/forgotPass'), //TODO: Route forgot-pass button
            child: const Text(
              'Forgot Password',
            ),
            style: ButtonStyle(
              overlayColor: MaterialStateColor.resolveWith(
                (states) => Colors.transparent,
              ),
            ),
          ),
        ),
        SizedBox(
          height: sSize.height * .01,
        ),
        RoundedElevatedButt(
          title: 'Sign In',
          press: () {
            if (fomKey!.currentState!.validate()) {
              String emaiL = emaiLController!.text.trim();
              String pasSworD = passWController!.text;

              _authControl.signIN(emaiL, pasSworD);
            }
          },
          radius: 21,
          paddingH: 171,
          paddingV: 27,
        ),
        SizedBox(
          height: sSize.height * .01,
        ),
        TextWTextButton(
          sSize: sSize,
          press: () =>
              // ignore: todo
              Get.toNamed('/signUp'), //TODO: Route don't have an account button
          teXt: 'Don\'t have an account yet?',
          textButtonText: 'Sign Up',
        ),
      ],
    );
  }
}
