import 'package:burrow/Model%20Class/Model_class.dart';
import 'package:burrow/pages/slide_show/slide_controller.dart';
import 'package:burrow/routes/app_routes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';

class slidepage extends GetView<slideController> {
  const slidepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              minimum: EdgeInsets.only(top: 70),
              child: CarouselSlider.builder(
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade200,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        product[index].img,
                        width: 350,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
                itemCount: product.length,
                options: CarouselOptions(
                  autoPlayCurve: Curves.easeInExpo,
                  animateToClosest: true,
                  autoPlayAnimationDuration: Duration(seconds: 2),
                  height: 400,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 4),
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.9,
                  onPageChanged: (index, reason) {
                    // Update the current page index in the controller
                    // controller.updatePageIndex(index);
                    controller.updatePageIndex(index);
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            RichText(
              text: TextSpan(
                text: "Explore The Most \nComplete ",
                style: GoogleFonts.aBeeZee(fontSize: 30, color: Colors.black),
                children: [
                  TextSpan(
                    text: "Catalog",
                    style: GoogleFonts.aclonica(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Obx(
              () => DotsIndicator(
                onTap: (position) {
                  controller.carouselController.animateToPage(position.toInt());
                },
                dotsCount: product.length,
                position: controller.currentPageIndex.value,
                decorator: DotsDecorator(
                  activeSize: Size(8, 8),
                  color: Colors.black87, // Inactive color
                  activeColor: Colors.redAccent,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, fixedSize: Size(360, 60)),
                onPressed: () {
                  Get.toNamed(AppRoutes.signup);
                },
                child: Text(
                  "Next",
                  style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
            SizedBox(
              height: 20,
            ),
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
      ),
    );
  }
}
