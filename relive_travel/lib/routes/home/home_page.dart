import 'package:get/get.dart';
import 'package:relive_travel/bindings/home/home_binding.dart';
import 'package:relive_travel/routes/route_name.dart';
import 'package:relive_travel/views/home/home.dart';

class HomePage {
  static final ROUTES = [
    GetPage(
      name: RouteName.home,
      page: () => Home(),
      binding: HomeBinding(),
      // 페이지 이동시 효과 주지말자
      transition: Transition.noTransition,
    ),
  ];
}
