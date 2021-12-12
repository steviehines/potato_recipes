import 'package:get/get.dart';
import 'package:potato_foods/controllers/auth_controller.dart';
import 'package:potato_foods/controllers/fire_controller.dart';

class FireBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
    Get.put<FirestoreController>(FirestoreController());
  }
}
