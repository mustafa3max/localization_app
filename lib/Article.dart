import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/utils/lang/lang_controller.dart';
import 'package:localization/utils/lang/translation.dart';

class Article extends StatelessWidget {
  const Article({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network("assets/images/localization_app.png"),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                str.title.tr,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                str.desc.tr,
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(str.article.tr),
            ),
            GetBuilder<LangController>(
              builder: (controller) => ElevatedButton(
                onPressed: () => controller.setLocal(),
                child: Text(Get.locale!.languageCode),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
