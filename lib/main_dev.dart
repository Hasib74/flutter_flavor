import 'package:flutter/cupertino.dart';

import 'app/my_app.dart';
import 'core/appConfig/app_config.dart';

void main() {
  var configuredApp = AppConfig(
    appDisplayName: "Devlopment",
    appInternalId: 1,
    child: MyApp(),
  );

  runApp(configuredApp);
}