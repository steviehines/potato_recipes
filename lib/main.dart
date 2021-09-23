import 'package:flutter/material.dart';
import 'package:potato_foods/components/theme.dart';
import 'package:potato_foods/routes/pages.dart';
import 'package:potato_foods/views/home_screen.dart';
import 'bindings/main_bindings.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      theme: lightThemeData,
      defaultTransition: Transition.fade,
      initialBinding: FireBindings(),
      getPages: AppPages.pages,
      home: const HomeView(),
    ),
  );
}
