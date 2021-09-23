import 'package:get/get.dart';

class FireBindings implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<FireController>(() => FireController(FireRepository(MyApi())));
  }
}
