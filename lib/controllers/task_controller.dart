import 'dart:ffi';

import 'package:flutter_application_event1/db/db_helper.dart';
import 'package:flutter_application_event1/models/task.dart';
import 'package:get/get.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  Future<int> addTask({Task? task}) async {
    return await DBHelper.insert(task);
  }
}
