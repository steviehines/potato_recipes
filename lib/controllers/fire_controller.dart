import 'package:get/get.dart';

class FireController extends GetxController {
  // final MyRepository repository;
  // FireController(this.repository);

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
