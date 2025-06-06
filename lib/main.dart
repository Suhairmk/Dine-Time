import 'package:dinetime/app/constant/app_theme.dart';
import 'package:dinetime/app/controllers/theme_controller.dart';
import 'package:dinetime/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:get/get.dart';

// Controller to handle theme mode with GetX


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
    await FlutterLocalization.instance.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        title: 'Themed App with GetX',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeController.themeMode.value,
        initialRoute: AppRoutes.home,
        getPages: AppRoutes.routes,
      ),
    );
  }
}
