import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:relive_travel/config/static_config.dart';

class MainContainer extends StatelessWidget {
  final Widget body;
  final bool showBottomNav;
  const MainContainer({super.key, required this.body, this.showBottomNav = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: showBottomNav
          ? BottomAppBar(
              elevation: 0,
              padding: EdgeInsets.zero,
              child: SizedBox(
                height: 50.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: StaticConfig.bottomTabList.map((item) {
                    var current = GoRouterState.of(context).name == item['name'];
                    return GestureDetector(
                      onTap: current ? null : () => context.goNamed(item['name']),
                      child: Container(
                        color: current ? const Color.fromRGBO(235, 137, 142, 1) : Colors.white,
                        width: MediaQuery.of(context).size.width / StaticConfig.bottomTabList.length,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(item['icon'], color: current ? Colors.white : const Color.fromRGBO(235, 137, 142, 1)),
                            Text(
                              item['title'],
                              style: TextStyle(color: current ? Colors.white : const Color.fromRGBO(235, 137, 142, 1)),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            )
          : null,
    );
  }
}
