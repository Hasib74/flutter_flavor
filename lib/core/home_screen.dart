import 'package:flavors_test/app/my_app.dart';
import 'package:flavors_test/core/appConfig/app_config.dart';
import 'package:flutter/material.dart';
import 'package:driver_hiring_app/main.dart';
import 'package:driver_hiring_app/presentation/auth/signIn/sign_in.dart';
import 'package:driver_hiring_app/core/appRoutes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  AppConfig? appConfig;

  @override
  Widget build(BuildContext context) {
    appConfig = AppConfig.of(context)!;

    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (_) => new MyAppTwo(
                            routes: AppRoutes.DRIVER_DISPLAY,
                          )));
            },
            child: Text(appConfig!.appDisplayName.toString())),
      ),
    );
  }
}
