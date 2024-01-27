import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class slideController extends GetxController {
  var currentPageIndex = 0.obs;
  var carouselController = CarouselController();
  void updatePageIndex(int index) {
    currentPageIndex.value = index;
  }
}
