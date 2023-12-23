import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:relive_travel/app/page/calendar.dart';
import 'package:relive_travel/app/page/feed.dart';
import 'package:relive_travel/app/page/home.dart';
import 'package:relive_travel/app/page/my_page.dart';
import 'package:relive_travel/app/page/travel.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

GoRouter appRouter = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      name: 'home',
      pageBuilder: (context, state) => const NoTransitionPage(child: Home()),
    ),
    GoRoute(
      path: '/calendar',
      name: 'calendar',
      pageBuilder: (context, state) => const NoTransitionPage(child: Calendar()),
    ),
    GoRoute(
      path: '/feed',
      name: 'feed',
      pageBuilder: (context, state) => const NoTransitionPage(child: Feed()),
    ),
    GoRoute(
      path: '/travel',
      name: 'travel',
      pageBuilder: (context, state) => const NoTransitionPage(child: Travel()),
    ),
    GoRoute(
      path: '/my_page',
      name: 'myPage',
      pageBuilder: (context, state) => const NoTransitionPage(child: MyPage()),
    ),
  ],
);
