import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:potato_foods/components/constants.dart';
import 'package:potato_foods/parts/reset_pass_form.dart';
import 'package:potato_foods/widgets/dialog_text.dart';

class ForgotPassView extends StatelessWidget {
  const ForgotPassView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;

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
            splashColor: ConstAnts.medicalGreen,
            borderRadius: const BorderRadius.all(
              Radius.circular(32.0),
            ),
            onTap: () =>
                // ignore: todo
                Navigator.pop(context), //TODO: Route pop forgot pass page
            child: const Icon(
              Icons.close,
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
              DialogText(
                screenSize: _screenSize,
                align: Alignment.centerLeft,
                text1: 'Recovery',
                text2: 'Please enter your account email',
              ),
              Expanded(
                flex: 4,
                child: Image.asset(
                  'assets/images/dev2.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              const Expanded(
                flex: 3,
                child: RecoverPassForm(),
              ),
              const SizedBox(
                height: 21,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
