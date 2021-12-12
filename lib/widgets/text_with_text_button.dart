import 'package:flutter/material.dart';

class TextWTextButton extends StatelessWidget {
  const TextWTextButton({
    Key? key,
    required this.sSize,
    required this.teXt,
    this.textButtonText,
    this.press,
  }) : super(key: key);

  final Size sSize;
  final String? teXt, textButtonText;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: sSize.height * .01),
      child: Expanded(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              teXt!,
            ),
            TextButton(
              onPressed: press,
              child: Text(
                textButtonText!,
              ),
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                  (states) => Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
