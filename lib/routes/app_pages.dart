import 'package:burrow/pages/Navigation_Bar/nav_binding.dart';
import 'package:burrow/pages/Navigation_Bar/nav_page.dart';
import 'package:burrow/pages/cart/cart_binding.dart';
import 'package:burrow/pages/cart/cart_page.dart';
import 'package:burrow/pages/favorite/favorite_binding.dart';
import 'package:burrow/pages/favorite/favorite_page.dart';
import 'package:burrow/pages/furniture/funiture_binding.dart';
import 'package:burrow/pages/furniture/furniture_page.dart';
import 'package:burrow/pages/home/home_binding.dart';
import 'package:burrow/pages/home/home_controller.dart';
import 'package:burrow/pages/home/home_page.dart';
import 'package:burrow/pages/signprofile/signpro_binding.dart';
import 'package:burrow/pages/signprofile/signpro_page.dart';
import 'package:burrow/pages/slide_show/slide_binding.dart';
import 'package:burrow/pages/slide_show/slide_page.dart';
import 'package:burrow/pages/splash/splash_binding.dart';
import 'package:burrow/pages/splash/splash_pages.dart';
import 'package:get/get.dart';
import '../pages/sign_up/sign_binding.dart';
import '../pages/sign_up/sign_page.dart';
import 'app_routes.dart';

class Apppages {
  static var list = [
    GetPage(
        name: AppRoutes.splash,
        page: () => splashpage(),
        binding: splashbinding()),
    GetPage(
        name: AppRoutes.slideshow,
        page: () => slidepage(),
        binding: slidebinding()),
    GetPage(
        name: AppRoutes.signup, page: () => signpage(), binding: signbinding()),
    GetPage(
        name: AppRoutes.signprofile,
        page: () => signpropage(),
        binding: signprobinding()),
    GetPage(
        name: AppRoutes.navigationbar,
        page: () => navpage(),
        binding: navbinding()),
    GetPage(
        name: AppRoutes.home,
        page: () => home(controller: homeController()),
        binding: homebinding()),
    GetPage(
        name: AppRoutes.furniture,
        page: () => furniture(),
        binding: furniturebinding()),
    GetPage(
        name: AppRoutes.favorite,
        page: () => favorite(),
        binding: favoritebinding()),
    GetPage(name: AppRoutes.cart, page: () => cart(), binding: cartbinding()),
  ];
}
