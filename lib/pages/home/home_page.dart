import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import 'home_controller.dart';

class home extends StatefulWidget {
  final homeController controller;

  const home({Key? key, required this.controller}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

final List<StaggeredTile> _staggeredTiles = [
  StaggeredTile.count(2, 3), // Large tile
  StaggeredTile.count(2, 2), // Medium tile
  StaggeredTile.count(2, 3), // Small tile
  StaggeredTile.count(2, 2), // Small tile
];

class _homeState extends State<home> {
  void initState() {
    super.initState();
    widget.controller.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset("assets/dp.png", fit: BoxFit.cover)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.black),
          ),
        ),
        title: Obx(
          () {
            return AnimatedSwitcher(
              duration: Duration(seconds: 1),
              switchInCurve: Easing.legacy,
              child: widget.controller.showSearchBar.value
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                            ),
                            hintText: "Search...",
                            hintStyle: TextStyle(color: Colors.grey.shade600),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    )
                  : AnimatedSwitcher(
                      duration: Duration(seconds: 1),
                      switchInCurve: Easing.emphasizedAccelerate,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Hello,",
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.black, fontSize: 23)),
                              TextSpan(
                                  text: " John",
                                  style: GoogleFonts.aBeeZee(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 23))
                            ]),
                          )),
                    ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.brown.shade900,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("2",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.white, fontSize: 17)),
                    SizedBox(width: 5),
                    Icon(Icons.notifications, color: Colors.white),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15, left: 8),
          child: SizedBox(
            height: 130,
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    padding: EdgeInsets.all(2),
                    width: 130,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("assets/dp.png", fit: BoxFit.cover)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 1),
                        color: Colors.white),
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
          ),
          child: Row(
            children: [
              Text(
                "Categories",
                style: GoogleFonts.aBeeZee(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 520,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                StaggeredGridView.count(
                  padding: EdgeInsets.all(10),
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  staggeredTiles: _staggeredTiles,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.at-home.co.in/cdn/shop/products/LAKEWOOD2strLS.jpg?v=1659677969"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.pink.shade50),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 10),
                            child: Text("Seating",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blueGrey)),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/577514/pexels-photo-577514.jpeg?cs=srgb&dl=pexels-led-supermarket-577514.jpg&fm=jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.deepPurpleAccent),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "Pendants",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.woodenstreet.de/image/data/little-looms/multicolor-hand-tufted-camila-flora-rug-72-48-inch/1.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(25),
                              color: CupertinoColors.destructiveRed),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('Rugs',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.insaraf.com/cdn/shop/products/42853-FineBuy-Beistelltisch-Massivholz-Design-Kl_13_1_1024x1024.jpg?v=1531260696"),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text('Accessories',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey)),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, bottom: 10),
          child: Row(
            children: [
              Text(
                "Space Ideas",
                style: GoogleFonts.aBeeZee(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.red),
              width: double.infinity,
            );
          },
          options: CarouselOptions(
              height: 230,
              autoPlayInterval: Duration(seconds: 4),
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1.8 / 2),
        ),
        SizedBox(
          height: 100,
        )
      ])),
    );
  }
}
