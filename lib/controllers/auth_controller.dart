import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:potato_foods/components/constants.dart';

class AuthController extends GetxController {
  var displayName = '';

  FirebaseAuth fAuth = FirebaseAuth.instance;

  User? get userProfile => fAuth.currentUser;

  Stream get status => fAuth.userChanges(); //!

  @override
  void onInit() {
    displayName = userProfile != null ? userProfile!.displayName! : '';
    super.onInit();
  }

  void siGnUp(String name, String email, String passW) async {
    try {
      await fAuth
          .createUserWithEmailAndPassword(
        email: email,
        password: passW,
      )
          .then((value) {
        displayName = name;
        fAuth.currentUser!.updateDisplayName(name);
      });
      update();
      // ignore: todo
      Get.offAllNamed('/home'); //TODO: Route just signed-up and to home
    } on FirebaseAuthException catch (e) {
      String title = e.code.replaceAll(RegExp('-'), '').capitalize!;
      String message = '';
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exists for this email.';
      } else {
        message = e.message.toString();
      }
      print(message);

      Get.snackbar(
        title,
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: ConstAnts.darkText,
        colorText: ConstAnts.lightText,
      );
    } catch (e) {
      Get.snackbar(
        'Error occured!',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: ConstAnts.darkText,
        colorText: ConstAnts.lightText,
      );
    }
  }

  void signIN(String email, String passW) async {
    try {
      await fAuth
          .signInWithEmailAndPassword(
            email: email,
            password: passW,
          )
          .then((v) => displayName = userProfile!.displayName!);
      update();
      // ignore: todo
      Get.offAndToNamed('/signIn'); //TODO: Route signed-in
    } on FirebaseAuthException catch (e) {
      String title = e.code.replaceAll(RegExp('-'), '').capitalize!;
      String message = '';
      if (e.code == 'weak-password') {
        message = 'Wrong password. Please try again.';
      } else if (e.code == 'user-not-found') {
        message =
            'Account does not exist for $email. Create your account by signing up.';
      } else {
        message = e.message.toString();
      }
      print(message);

      Get.snackbar(
        title,
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: ConstAnts.darkText,
        colorText: ConstAnts.lightText,
      );
    } catch (e) {
      Get.snackbar(
        'Error occured!',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: ConstAnts.darkText,
        colorText: ConstAnts.lightText,
      );
    }
  }

  void reseTPass(String email) async {
    try {
      await fAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      String title = e.code.replaceAll(RegExp('-'), '').capitalize!;
      String message = '';
      if (e.code == 'user-not-found') {
        message = 'Wrong password. Please try again.';
      } else {
        message = e.message.toString();
      }
      print(message);

      Get.snackbar(
        title,
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: ConstAnts.darkText,
        colorText: ConstAnts.lightText,
        barBlur: 0, // default
        overlayBlur: 7, // default
        overlayColor: Colors.transparent, // default
      );
    } catch (e) {
      Get.snackbar(
        'Error occured!',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: ConstAnts.darkText,
        colorText: ConstAnts.lightText,
      );
    }
  }

  void signOuT() async {
    try {
      await fAuth.signOut();
      displayName = '';
      update();
      // ignore: todo
      Get.offAllNamed('/home'); //TODO: Route just signed-out
    } catch (e) {
      Get.snackbar(
        'Error occured!',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: ConstAnts.darkText,
        colorText: ConstAnts.lightText,
      );
    }
  }

  // // capitalize first letter
  // extension StringExtension on String {
  //     String capitalizeString (){
  //       return '${this.[0].toUpperCase()}${this.substring(1)}';
  //     }
  // }
}
