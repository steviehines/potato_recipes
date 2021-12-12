import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:potato_foods/components/constants.dart';
import 'package:potato_foods/controllers/auth_controller.dart';
import 'package:potato_foods/views/home_screen.dart';
import 'package:potato_foods/views/login_opt_view.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstAnts.nearlyWhite,
      body: GetBuilder<AuthController>(builder: (_) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 21,
            ),
            child: _.userProfile != null
                ? const HomeView()
                : const LoginOptionView(),
          ),
        );
      }),
    );
  }
}
