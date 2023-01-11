import 'package:flutter/material.dart';

import 'app/my_app.dart';
import 'core/appConfig/app_config.dart';

void main() {
  var configuredApp = AppConfig(
    appDisplayName: "Staging",
    appInternalId: 1,
    child: MyApp(),
  );

  runApp(configuredApp);
}