import 'package:flutter/material.dart';

class StaticConfig {
  static final List bottomTabList = [
    {
      "path": '/',
      "name": "home",
      "title": "홈",
      "icon": Icons.home,
    },
    {
      "path": '/calendar',
      "name": "calendar",
      "title": "일정",
      "icon": Icons.calendar_month,
    },
    {
      "path": '/feed',
      "name": "feed",
      "title": "피드",
      "icon": Icons.feed,
    },
    {
      "path": '/travel',
      "name": "travel",
      "title": "여행추가",
      "icon": Icons.add_circle,
    },
    {
      "path": '/my_page',
      "name": "myPage",
      "title": "MY",
      "icon": Icons.account_circle,
    },
  ];
}
