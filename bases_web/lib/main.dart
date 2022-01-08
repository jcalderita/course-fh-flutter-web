import 'package:bases_web/route/route_generator.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      // routes: {
      //   '/stateful': (_) => const CounterPage(),
      //   '/provider': (_) => const CounterProviderPage(),
      // },
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
