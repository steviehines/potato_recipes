import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:potato_foods/components/constants.dart';
import 'package:potato_foods/parts/sign_up_buttons.dart';
import 'package:potato_foods/widgets/dialog_text.dart';
import 'package:potato_foods/widgets/rounded_text_form_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _fomKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

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
            splashColor: ConstAnts.medicalGreen,
            borderRadius: const BorderRadius.all(
              Radius.circular(32.0),
            ),
            // ignore: todo
            onTap: () => Navigator.pop(context), //TODO: Route pop sign-up page
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
          child: Form(
            key: _fomKey,
            child: Column(
              children: [
                DialogText(
                  screenSize: screenSize,
                  align: Alignment.centerLeft,
                  text1: 'Sign Up',
                  text2: 'Create an account...',
                ),
                const Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 33,
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Column(
                    children: [
                      RoundedTextFormField(
                        controlLer: _nameController,
                        hintText: 'Name',
                        validator: (v) {
                          if (v.toString().length <= 2) {
                            return 'Enter a valid name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      RoundedTextFormField(
                        controlLer: _mailController,
                        hintText: 'Email',
                        validator: (v) {
                          bool _isEmailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(v!);
                          if (!_isEmailValid) {
                            return 'Invalid Email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      RoundedTextFormField(
                        controlLer: _passController,
                        hintText: 'Password',
                        obscureText: true,
                        validator: (v) {
                          if (v.toString().length < 6) {
                            return 'Password should be 6 characters or more.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      RoundedTextFormField(
                        obscureText: true,
                        hintText: 'Confirm password',
                        validator: (v) {
                          if (v.trim() != _passController.text.trim()) {
                            return 'Password does not match!';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                    ],
                  ),
                ),
                SignUpButtons(
                  fomKey: _fomKey,
                  screenSize: screenSize,
                  namEController: _nameController,
                  emaiLController: _mailController,
                  passWController: _passController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
