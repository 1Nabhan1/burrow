import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'crt_controller.dart';

class cart extends GetView<cartController> {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.red,);
  }
}
