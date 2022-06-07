import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_event1/services/notification_services.dart';
import 'package:flutter_application_event1/ui/theme.dart';
import 'package:flutter_application_event1/ui/widgets/button.dart';
import 'package:get/get.dart';

import 'package:intl/intl.dart';

import '../services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifyHelper;
  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat.yMMMMd().format(DateTime.now()),
                      style: subHeadingStyle,
                    ),
                    Text(
                      "Today",
                      style: headingStyle,
                    )
                  ],
                ),
              ),
              MyButton(label: "+ Add Task", onTap: () => null)
            ],
          ),
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: () {
          ThemeService().switchTheme();
          notifyHelper.displayNotification(
              title: "theme changed",
              body: Get.isDarkMode
                  ? "activated light theme"
                  : "activated dark theme");

          notifyHelper.scheduleNotification();

          notifyHelper.displayNotification(
              title: "Theme Changed",
              body: Get.isDarkMode
                  ? "Activeted Light Theme"
                  : "Activeted Dark Theme");

          notifyHelper.scheduledNotification();
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
