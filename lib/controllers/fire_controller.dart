import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:potato_foods/models/recipe_model.dart';

class FirestoreController extends GetxController {
  final repo = <RecipeModel>[].obs;

  final FirebaseFirestore _fBfS = FirebaseFirestore.instance;

  @override
  void onInit() {
    repo.bindStream(getAllRecipes());
    super.onInit();
  }

  Stream<List<RecipeModel>> getAllRecipes() {
    return _fBfS.collection('potato').snapshots().map((_) {
      return _.docs.map((e) => RecipeModel.fromSnapshot(e)).toList();
    });
  }
}
