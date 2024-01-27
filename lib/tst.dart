// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/simple/get_view.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import 'home_controller.dart';
//
// class Home extends StatefulWidget {
//   final HomeController controller;
//
//   const Home({Key? key, required this.controller}) : super(key: key);
//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   void initState() {
//     super.initState();
//     widget.controller.onInit();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         titleSpacing: 0,
//         leading: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             child: Icon(Icons.person, color: Colors.white),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30), color: Colors.black),
//           ),
//         ),
//         title: Obx(
//               () {
//             return widget.controller.showSearchBar.value
//                 ? Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.circular(15)),
//                 child: TextField(
//                   style: TextStyle(color: Colors.black),
//                   controller: widget.controller.textController,
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.search),
//                     suffixIcon: widget.controller.textController.text.isNotEmpty
//                         ? GestureDetector(
//                       onTap: () {
//                         widget.controller.textController.clear();
//                       },
//                       child: Icon(Icons.clear),
//                     )
//                         : null,
//                     hintText: "Search...",
//                     hintStyle: TextStyle(color: Colors.grey.shade600),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             )
//                 : Text("Hello User", style: GoogleFonts.aBeeZee());
//           },
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.brown.shade900,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Icon(Icons.notifications, color: Colors.white),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
