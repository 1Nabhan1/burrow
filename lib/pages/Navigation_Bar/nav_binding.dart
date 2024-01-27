import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'nav_controller.dart';

class navbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<navController>(() => navController());
  }
}