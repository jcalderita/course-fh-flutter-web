import 'package:flutter/cupertino.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routename) => navigatorKey.currentState!.pushNamed(routename);

  void goBack(String routename) => navigatorKey.currentState!.pop();
}
