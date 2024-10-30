import 'package:expense_management_app/features/authentication/screens/login.dart';
import 'package:expense_management_app/features/main/calendar.dart';
import 'package:expense_management_app/features/main/report.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:expense_management_app/utils/constants/text_strings.dart';
import 'package:expense_management_app/utils/theme/theme.dart';

import 'features/main/dashboard.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const LoginScreen(), // Initial screen
      routes: {
        '/navigation': (context) => const DashboardScreen(), // NavigationExample as a route
      },
    );
  }
}
