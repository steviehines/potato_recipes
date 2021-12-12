import 'package:flutter/material.dart';
import 'package:potato_foods/widgets/dialog_text.dart';

class OopsOfline extends StatelessWidget {
  const OopsOfline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Center(
      child: DialogText(
        screenSize: screenSize,
        align: Alignment.center,
        text1: 'Ow.. it looks like you are offline.',
        text2: '',
      ),
    );
  }
}
