import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relive_travel/controllers/home/home_controller.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Relive Travel"),
      ),
      body: Center(
        child: Text("init"),
      ),
    );
  }
}
