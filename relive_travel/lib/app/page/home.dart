import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relive_travel/widget/main_container.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HometState();
}

class _HometState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    return const MainContainer(
      body: Center(child: Text("홈")),
    );
  }
}
