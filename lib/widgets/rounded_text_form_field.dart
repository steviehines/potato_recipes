import 'package:flutter/material.dart';
import 'package:potato_foods/components/constants.dart';

class RoundedTextFormField extends StatelessWidget {
  const RoundedTextFormField({
    Key? key,
    this.controlLer,
    this.obscureText = false,
    required this.hintText,
    this.validator,
  }) : super(key: key);

  final TextEditingController? controlLer;
  final bool? obscureText;
  final String hintText;
  final dynamic validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlLer,
      obscureText: obscureText!,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ConstAnts.lightText),
          borderRadius: BorderRadius.all(
            Radius.circular(21),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ConstAnts.lightText),
          borderRadius: BorderRadius.all(
            Radius.circular(21),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ConstAnts.errorRed),
          borderRadius: BorderRadius.all(
            Radius.circular(21),
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ConstAnts.errorRed),
          borderRadius: BorderRadius.all(
            Radius.circular(21),
          ),
        ),
      ),
      validator: validator,
    );
  }
}
