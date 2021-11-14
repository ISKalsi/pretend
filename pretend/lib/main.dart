import 'package:flutter/material.dart';
import 'package:pretend/application/router/router.gr.dart';
import 'package:pretend/injection_container.dart' as di;
import 'package:core/dynamic_theme_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appDelegate = AppRouter();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicThemeApp(
      buildChild: (themeData) {
        return MaterialApp.router(
          theme: themeData,
          routerDelegate: _appDelegate.delegate(),
          routeInformationParser: _appDelegate.defaultRouteParser(),
        );
      },
    );
  }
}
