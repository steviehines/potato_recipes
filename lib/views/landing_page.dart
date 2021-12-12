import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:potato_foods/controllers/auth_controller.dart';
import 'package:potato_foods/parts/tl_grid_view.dart';
import 'package:potato_foods/widgets/app_bar_header.dart';
import 'package:potato_foods/widgets/info_card.dart';
import 'package:potato_foods/widgets/search_bar.dart';

class Landing extends StatelessWidget {
  const Landing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authCtrl = Get.find<AuthController>();

    var sSize = MediaQuery.of(context).size;
    return SizedBox(
      width: sSize.width,
      height: sSize.height,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * .033,
          ),
          AppBarHeadR(
            user: 'Hello ${_authCtrl.displayName}',
            profilePic: 'assets/images/dev2.png',
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                // height: MediaQuery.of(context).size.height * 3.9,
                child: Column(
                  children: const [
                    SearchBar(),
                    InfoCard(),
                    // Flexible(
                    //   child: TLGrid(),
                    // ),
                    TLGrid(),
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
