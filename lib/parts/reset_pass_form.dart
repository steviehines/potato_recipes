import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:potato_foods/controllers/auth_controller.dart';
import 'package:potato_foods/widgets/rounded_elevated_button.dart';
import 'package:potato_foods/widgets/rounded_text_form_field.dart';

class RecoverPassForm extends StatefulWidget {
  const RecoverPassForm({
    Key? key,
  }) : super(key: key);

  @override
  State<RecoverPassForm> createState() => _RecoverPassFormState();
}

class _RecoverPassFormState extends State<RecoverPassForm> {
  final _authCtrl = Get.find<AuthController>();

  final _fomKey = GlobalKey<FormState>();
  final TextEditingController _emaIlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fomKey,
      child: Column(
        children: [
          RoundedTextFormField(
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
          RoundedElevatedButt(
            title: 'Submit',
            press: () {
              if (_fomKey.currentState!.validate()) {
                String emaIl = _emaIlController.text.trim();
                _authCtrl.reseTPass(emaIl);
              }
            },
            radius: 21,
            paddingH: 171,
            paddingV: 27,
          ),
          const SizedBox(
            height: 21,
          ),
        ],
      ),
    );
  }
}
