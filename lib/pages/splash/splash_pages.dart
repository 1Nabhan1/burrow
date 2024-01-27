import 'package:burrow/pages/splash/splash_controller.dart';
import 'package:burrow/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splashpage extends GetView<splashController> {
  const splashpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey.shade900.withGreen(49).withRed(50).withBlue(54),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/burrow.png"))),
      ),
    );
  }
}
