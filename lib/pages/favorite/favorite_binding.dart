import 'package:burrow/pages/favorite/favorite_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class favoritebinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<favoriteController>(() => favoriteController());
  }
}