import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:potato_foods/components/constants.dart';
import 'package:potato_foods/widgets/dialog_text.dart';
import 'package:potato_foods/parts/sign_in_form.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 21,
            vertical: 11,
          ),
          child: InkWell(
            borderRadius: const BorderRadius.all(
              Radius.circular(32.0),
            ),
            // ignore: todo
            onTap: () => Navigator.pop(context), //TODO: Route pop sign-in page
            child: const Icon(
              Icons.arrow_back_ios,
              color: ConstAnts.darkText,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 19,
            vertical: 33,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: DialogText(
                  screenSize: screenSize,
                  align: Alignment.bottomLeft,
                  text1: 'Welcome!',
                  text2: 'Login with your email and password...',
                ),
              ),
              Expanded(
                flex: 5,
                child: Image.asset(
                  'assets/images/dev2.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              const Expanded(
                flex: 7,
                child: SignInForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
