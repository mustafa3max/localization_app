import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangController extends GetxController {
  Future<void> setLocal() async {
    var lang = "ar";
    if (Get.locale!.languageCode == "ar") {
      lang = "en";
    } else {
      lang = "ar";
    }
    Get.updateLocale(Locale(lang));
  }

  @override
  void onInit() {
    setLocal();
    super.onInit();
  }
}
