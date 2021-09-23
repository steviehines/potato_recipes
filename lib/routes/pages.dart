import 'package:get/get.dart';
import 'package:potato_foods/views/detail_view.dart';
import 'package:potato_foods/views/forgot_pass_view.dart';
import 'package:potato_foods/views/home_screen.dart';
import 'package:potato_foods/views/login_opt_view.dart';
import 'package:potato_foods/views/sign_in_view.dart';
import 'package:potato_foods/views/sign_up_view.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    // GetPage(
    //   name: Routes.SPLASH,
    //   page: () => const DetailView(),
    // ),
    GetPage(
      name: Routes.loginOpt,
      page: () => const LoginOptionView(),
    ),

    GetPage(
      name: Routes.signIn,
      page: () => const SignInView(),
    ),
    GetPage(
      name: Routes.signUp,
      page: () => const SignUpView(),
    ),
    GetPage(
      name: Routes.forgotPass,
      page: () => const ForgotPassView(),
    ),

    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
    ),

    GetPage(
      name: Routes.detail,
      page: () => const DetailView(),
    ),
  ];
}
