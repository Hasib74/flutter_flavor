import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/appConfig/app_config.dart';
import '../core/home_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return _buildApp(config!.appDisplayName!);
  }

  Widget _buildApp(String appName) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primaryColor: Color(0xFF43a047),
        accentColor: Color(0xFFffcc00),
        primaryColorBrightness: Brightness.dark,
      ),
      home: HomeScreen(),
    );
  }
}