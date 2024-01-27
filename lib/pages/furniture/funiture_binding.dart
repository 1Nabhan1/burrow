import 'package:burrow/pages/furniture/furniture_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class furniturebinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<furnitureController>(() => furnitureController());
  }
}