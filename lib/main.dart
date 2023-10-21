import 'package:flutter/material.dart';
import 'package:flutter_shop_app/routes/app.dart';
import 'package:flutter/services.dart';
import 'package:flutter_shop_app/utils/theme_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'asf',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.bagItemScreen,
      routes: AppRoutes.routes,
    );
  }
}
