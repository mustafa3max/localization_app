import 'dart:ui';

import 'package:get/get.dart';
import 'package:localization/utils/lang/ar.dart';
import 'package:localization/utils/lang/en.dart';
import 'package:localization/utils/lang/tr_model.dart';

TrModel get str {
  if (Get.locale == const Locale("ar")) {
    return TrModel.fromJson(ar);
  } else {
    return TrModel.fromJson(en);
  }
}

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": ar,
        "en": en,
      };
}
