import 'package:burrow/pages/splash/splash_controller.dart';
import 'package:burrow/pages/splash/splash_pages.dart';
import 'package:burrow/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(backgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: GetBuilder<splashController>(
        builder: (_) => splashpage(),
        init: splashController(),
      ),
      getPages: Apppages.list,
    );
  }
}
