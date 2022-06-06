import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_event1/services/notification_services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(DateFormat.yMMMMd().format(DateTime.now())),
                  ],
                ),
              ],
            ),
          ],
        ));
  }

  _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: () {
          ThemeService().switchTheme();
          NotifyHelper.displayNotification(
              Title: "theme changed",
              Body: Get.isDarkMode
                  ? "activated light theme"
                  : "activated dark theme");
          NotifyHelper.scheduleNotification();
        },
        child: Icon(
            Get.isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight_round,
            size: 20,
            color: Get.isDarkMode ? Colors.white : Colors.black),
      ),
      actions: [
        CircleAvatar(
          backgroundImage: AssetImage("images/profile.png"),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
