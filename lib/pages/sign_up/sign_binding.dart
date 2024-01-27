
import 'package:burrow/pages/sign_up/sign_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class signbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<signController>(() => signController());
  }
}
