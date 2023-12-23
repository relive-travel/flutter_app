import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relive_travel/widget/main_container.dart';

class Calendar extends ConsumerWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MainContainer(
      body: Center(child: Text("일정")),
    );
  }
}
