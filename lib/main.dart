import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzy/core/config/app_routes.dart';
import 'package:quizzy/injector.dart' as injector;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injector.initInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationProvider: appRoutes.routeInformationProvider,
            routeInformationParser: appRoutes.routeInformationParser,
            routerDelegate: appRoutes.routerDelegate,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
          );
        });
  }
}
