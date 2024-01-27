import 'package:burrow/pages/sign_up/sign_controller.dart';
import 'package:burrow/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class signpage extends GetView<signController> {
  const signpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 18, right: 18.0, top: 40, bottom: 10),
                  child: Text(
                    "Enter Your Phone",
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        "You will recieve a 4 digit code for phone \nnumber verification",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.grey.shade500, fontSize: 17)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 58.0, right: 18, left: 18, bottom: 10),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    print(
                        'Country Code: ${number.dialCode}, Number: ${number.phoneNumber}');
                  },
                  onInputValidated: (bool value) {
                    print('Number is valid: $value');
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  textStyle: TextStyle(fontSize: 18, color: Colors.black),
                  initialValue: controller.phoneNumber,
                  textFieldController: TextEditingController(),
                  inputDecoration: InputDecoration(
                    labelText: 'Mobile Number',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            fixedSize: Size(360, 60)),
                        onPressed: () {
                          Get.toNamed(AppRoutes.signprofile);
                        },
                        child: Text(
                          "Continue",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.red,
                          elevation: 0,
                          fixedSize: Size(360, 60)),
                      onPressed: () {},
                      child: Text(
                        "Skip",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100, // Adjust the width of the line as needed
                      height: 1, // Adjust the height of the line as needed
                      color: Colors.black,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    ),
                    Text(
                      'Or continue with',
                      style: GoogleFonts.aBeeZee(
                          color: Colors.grey.shade400, fontSize: 18),
                    ),
                    Container(
                      width: 100, // Adjust the width of the line as needed
                      height: 1, // Adjust the height of the line as needed
                      color: Colors.black,
                      margin: EdgeInsets.symmetric(
                          horizontal:
                              5), // Adjust spacing between text and line
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20),
                        child: Row(children: [
                          Image.asset("assets/goo.png",
                              height: 30, fit: BoxFit.cover),
                          Text(
                            "Google",
                            style: GoogleFonts.aBeeZee(
                                color: Colors.grey.shade400),
                          ),
                        ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade400,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/face.png",
                              height: 30,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Facebook",
                              style: GoogleFonts.aBeeZee(
                                  color: Colors.grey.shade400),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
