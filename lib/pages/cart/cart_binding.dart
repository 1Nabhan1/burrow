import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'crt_controller.dart';

class cartbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<cartController>(() => cartController());
  }
}