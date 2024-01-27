import 'package:burrow/pages/splash/splash_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class splashbinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<splashController>(() => splashController());
  }
}
