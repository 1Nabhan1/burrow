import 'package:burrow/pages/Navigation_Bar/nav_controller.dart';
import 'package:burrow/pages/cart/cart_page.dart';
import 'package:burrow/pages/favorite/favorite_page.dart';
import 'package:burrow/pages/furniture/furniture_page.dart';
import 'package:burrow/pages/home/home_controller.dart';
import 'package:burrow/pages/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class navpage extends GetView<navController> {
  navpage({super.key});
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      home(controller: homeController()),
      furniture(),
      cart(),
      favorite()
    ];
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Obx(
              () => pages[controller.currentPageIndex.value],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors
                    .transparent, // Set the background color of the container to transparent
                borderRadius: BorderRadius.circular(15),
              ),
              child: Obx(
                () => MoltenBottomNavigationBar(
                  curve: Curves.easeInExpo,
                  duration: Duration(milliseconds: 200),
                  barColor: Colors.white,
                  domeCircleColor: Colors.brown
                      .shade900, // Set the background color of the MoltenBottomNavigationBar to transparent
                  selectedIndex: controller.currentPageIndex.value,
                  onTabChange: (clickedIndex) {
                    controller.currentPageIndex.value = clickedIndex;
                  },
                  tabs: [
                    MoltenTab(
                      icon: Icon(Icons.home_filled),
                    ),
                    MoltenTab(
                      icon: Icon(Icons.table_bar_rounded),
                    ),
                    MoltenTab(
                      icon: Icon(Icons.shopping_cart),
                    ),
                    MoltenTab(
                      icon: Icon(Icons.favorite),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
