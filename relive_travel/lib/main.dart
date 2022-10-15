import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relive_travel/routes/route_name.dart';
import 'package:relive_travel/routes/route_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Relive Travel",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Pretendard',
      ),
      getPages: RoutePage.page,
      initialRoute: RouteName.home,
    );
  }
}
