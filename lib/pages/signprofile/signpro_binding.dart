import 'package:burrow/pages/signprofile/signpro_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';


class signprobinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<signproController>(() => signproController());
  }
}