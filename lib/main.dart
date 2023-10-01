import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/Article.dart';
import 'package:localization/utils/lang/lang_controller.dart';
import 'package:localization/utils/lang/translation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: const Article(),
      debugShowCheckedModeBanner: false,
      translations: Translation(),
      locale: const Locale("ar"),
      fallbackLocale: const Locale("ar"),
      initialBinding: BindingsBuilder(
        () {
          Get.lazyPut<LangController>(
            () => LangController(),
          );
        },
      ),
    );
  }
}
