import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potato_foods/components/theme.dart';
import 'package:potato_foods/widgets/a_button.dart';

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
          padding: const EdgeInsets.all(11.0),
          child: InkWell(
            borderRadius: const BorderRadius.all(
              Radius.circular(32.0),
            ),
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: darkText,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 19,
          vertical: 33,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome!',
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          fontSize: screenSize.width * .1,
                          color: medicalGreen,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .005,
                    ),
                    Text(
                      'Login with your email and password...',
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          fontSize: screenSize.width * .045,
                          color: medicalGreen,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .005,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: SizedBox(
                child: Image.asset(
                  'assets/images/welc.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SignInForm(),
          ],
        ),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var sSize = MediaQuery.of(context).size;

    return Expanded(
      flex: 5,
      child: Form(
        child: Column(
          children: [
            Column(
              children: [
                RoundedTextFormField(
                  emailController: _emailController,
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
                SizedBox(
                  height: sSize.height * .01,
                ),
                RoundedTextFormField(
                  emailController: _passwordController,
                  hintText: 'Password',
                  validator: (v) {
                    bool _isPassValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                    ).hasMatch(v!);
                    if (!_isPassValid) {
                      return 'Invalid Password';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: sSize.height * .01,
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        // style: GoogleFonts.varelaRound(
                        //   textStyle: TextStyle(
                        //     fontSize: sSize.width * .045,
                        //     color: medicalGreen,
                        //   ),
                        // ),
                      ),
                      style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                          (states) => Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Buton(
                    heigHt: 55,
                    widTh: sSize.width * .97,
                    bColOr: medicalGreen,
                    splColOr: kErrorColor,
                    hovColOr: kMedi,
                    label: 'Sign In',
                    screenSize: sSize,
                    press: () {},
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

class RoundedTextFormField extends StatelessWidget {
  const RoundedTextFormField({
    Key? key,
    required TextEditingController emailController,
    this.obscureText = false,
    required this.hintText,
    this.validator,
  })  : _emailController = emailController,
        super(key: key);

  final TextEditingController _emailController;
  final bool? obscureText;
  final String hintText;
  final dynamic validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _emailController,
      obscureText: obscureText!,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: dullerGrey),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: dullerGrey),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kErrorColor),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kErrorColor),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
      ),
      validator: validator,
    );
  }
}
