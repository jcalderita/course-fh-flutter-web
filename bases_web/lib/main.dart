import 'package:bases_web/locator.dart';
import 'package:bases_web/route/route_generator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      // routes: {
      //   '/stateful': (_) => const CounterPage(),
      //   '/provider': (_) => const CounterProviderPage(),
      // },
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      // navigatorKey: navigationService.navigatorKey,
      builder: (_, child) => MainLayoutPage(
        child: child!,
      ),
    );
  }
}
