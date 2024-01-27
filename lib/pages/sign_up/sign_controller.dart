import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// import 'package:intl_phone_field/phone_number.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class signController extends GetxController {
  var currentPageIndex = 0.obs;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  PhoneNumber phoneNumber = PhoneNumber(
    isoCode: 'IN',
  );
  TextEditingController controller = TextEditingController();
  String? data;
  @override
  void onClose() {
    controller
        .dispose(); // Dispose the controller when the controller is closed
    super.onClose();
  }
}
