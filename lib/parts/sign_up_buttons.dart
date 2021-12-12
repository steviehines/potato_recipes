import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:potato_foods/controllers/auth_controller.dart';
import 'package:potato_foods/widgets/rounded_elevated_button.dart';
import 'package:potato_foods/widgets/text_with_text_button.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons({
    Key? key,
    required GlobalKey<FormState> fomKey,
    required this.screenSize,
    required this.emaiLController,
    required this.namEController,
    required this.passWController,
  })  : _fomKey = fomKey,
        super(key: key);

  final GlobalKey<FormState> _fomKey;
  final Size screenSize;

  final TextEditingController? namEController;
  final TextEditingController? emaiLController;
  final TextEditingController? passWController;

  @override
  Widget build(BuildContext context) {
    final _authCntrl = Get.find<AuthController>();

    return Column(
      children: [
        RoundedElevatedButt(
          title: 'Sign Up',
          press: () {
            if (_fomKey.currentState!.validate()) {
              String namE = namEController!.text.trim();
              String emaIl = emaiLController!.text.trim();
              String pasWorD = passWController!.text;

              _authCntrl.siGnUp(namE, emaIl, pasWorD);
            }
          },
          radius: 21,
          paddingH: 171,
          paddingV: 27,
        ),
        TextWTextButton(
          sSize: screenSize,
          teXt: 'Already have an account?',
          textButtonText: 'Sign In',
          press: () => Get.offAndToNamed(
              // ignore: todo
              '/signIn'), //TODO: Route already have an account button
        ),
      ],
    );
  }
}
