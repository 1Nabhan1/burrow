import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'favorite_controller.dart';

class favorite extends GetView<favoriteController> {
  const favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.yellow,);
  }
}