import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_pattern_site/app/routes/app_pages.dart';
import 'package:getx_pattern_site/app/theme/app_theme.dart';
import 'package:getx_pattern_site/app/translations/app_translations.dart';

import 'app/modules/splash/splash_page.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    home: SplashPage(),

    translationsKeys: AppTranslation.translations,
    // translations: AppTranslation(),
    // translationsKeys: AppTranslation().keys,

    getPages: AppPages.pages,
    theme: appThemeData,
    // locale: Locale('es', 'MX'),
    locale: Locale('en', 'US'),
    fallbackLocale: Locale('en', 'US'),

    defaultTransition: Transition.rightToLeftWithFade,
  ));
}
