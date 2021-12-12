import 'package:flutter/material.dart';
import 'package:potato_foods/parts/sign_in_buttons.dart';
import 'package:potato_foods/widgets/rounded_text_form_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var sSize = MediaQuery.of(context).size;

    return Form(
      key: _formKey,
      child: Column(
        children: [
          Column(
            children: [
              RoundedTextFormField(
                controlLer: _emailController,
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
                controlLer: _passwordController,
                obscureText: true,
                hintText: 'Password',
                validator: (v) {
                  if (v.toString().length < 6) {
                    return 'Password should be 6 characters or more.';
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
            child: SignInButtons(
              sSize: sSize,
              fomKey: _formKey,
              emaiLController: _emailController,
              passWController: _passwordController,
            ),
          ),
        ],
      ),
    );
  }
}
