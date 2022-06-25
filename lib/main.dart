import 'package:flutter/material.dart';
import 'package:flutter_application_event1/db/db_helper.dart';
import 'package:flutter_application_event1/login.dart';
import 'package:flutter_application_event1/register.dart';
import 'package:flutter_application_event1/services/theme_services.dart';
import 'package:flutter_application_event1/ui/home_page.dart';
import 'package:flutter_application_event1/ui/theme.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_application_event1/login.dart';
import 'package:flutter_application_event1/register.dart';
import 'dart:ffi';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App Event',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: HomePage(),
      // initialRoute: 'login',
      // routes: {
      //   // 'login': (context) => const MyLogin(),
      //   // 'register': (context) => const MyRegister(),
      // }
    );
  }
}
