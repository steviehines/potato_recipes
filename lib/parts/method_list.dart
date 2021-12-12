import 'package:flutter/material.dart';
import 'package:potato_foods/widgets/method_card.dart';

class MethodList extends StatelessWidget {
  const MethodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        MethodCard(),
        MethodCard(),
        MethodCard(),
        MethodCard(),
        MethodCard(),
        MethodCard(),
        MethodCard(),
      ],
    );
  }
}
