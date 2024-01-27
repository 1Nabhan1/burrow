import 'dart:async';

import 'package:burrow/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../slide_show/slide_page.dart';

class splashController extends GetxController {
@override
  void onInit() {
  Timer(Duration(seconds: 2), () {
    Get.offNamed(AppRoutes.slideshow);
  });
    super.onInit();
  }
}
