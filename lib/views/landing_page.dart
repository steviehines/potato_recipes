import 'package:flutter/material.dart';
import 'package:potato_foods/views/tl_grid_view.dart';
import 'package:potato_foods/widgets/app_bar_header.dart';
import 'package:potato_foods/widgets/info_card.dart';
import 'package:potato_foods/widgets/search_bar.dart';

class Landing extends StatelessWidget {
  const Landing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sSize = MediaQuery.of(context).size;
    return SizedBox(
      width: sSize.width,
      height: sSize.height,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * .033,
          ),
          const AppBarHeadR(),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 3.9,
                child: Column(
                  children: const <Widget>[
                    SearchBar(),
                    InfoCard(),
                    Flexible(
                      child: TL(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
