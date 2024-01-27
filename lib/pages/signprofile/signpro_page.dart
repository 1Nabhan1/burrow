import 'package:burrow/pages/signprofile/signpro_controller.dart';
import 'package:burrow/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';

class signpropage extends GetView<signproController> {
  const signpropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back_ios_new_outlined)),
          centerTitle: true,
          title: Text(
            "Sign Up",
            style: GoogleFonts.aBeeZee(),
          )),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 38.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Icon(CupertinoIcons.photo_camera_solid,
                      color: Colors.grey.shade800),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 45,
              width: 150,
              child: CupertinoTextField(
                  style: GoogleFonts.aBeeZee(),
                  placeholder: "Name",
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade400))),
            ),
            Container(
              child: CupertinoTextField(
                  style: GoogleFonts.aBeeZee(),
                  placeholder: "Surname",
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade400))),
              height: 45,
              width: 150,
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50,
          width: 340,
          child: TextFormField(
            cursorColor: Colors.red,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(20)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20)),
              counterStyle: GoogleFonts.aBeeZee(),
              focusColor: Colors.red,
              labelText: "Email",
              labelStyle: GoogleFonts.aBeeZee(color: Colors.grey.shade400),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(330, 60),
                foregroundColor: Colors.white,
                backgroundColor: Colors.black),
            onPressed: () {
              Get.toNamed(AppRoutes.navigationbar);
            },
            child: Text("Create Profile"))
      ]),
    );
  }
}
