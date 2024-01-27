import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class homeController extends GetxController {
  var currentPageIndex = 0.obs;
  var showSearchBar = false.obs; // Use RxBool to make it observable
  TextEditingController textController = TextEditingController();
  @override
  void onInit() {
    // After 5 seconds, update the state to show the search bar
    Timer(Duration(seconds: 5), () {
       showSearchBar.value = true;
    });
    ever(showSearchBar, (_) {
    });
  }
}
