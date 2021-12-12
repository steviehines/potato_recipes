import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:potato_foods/components/theme.dart';
import 'package:potato_foods/routes/pages.dart';
import 'package:potato_foods/views/home_screen.dart';
import 'bindings/main_bindings.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.fade,
      initialBinding: FireBindings(),
      getPages: AppPages.pages,
      home: const HomeView(),
    ),
  );
}
