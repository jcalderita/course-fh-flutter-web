import 'package:bases_web/ui/pages/counter_page.dart';
import 'package:bases_web/ui/pages/counter_provider_page.dart';
import 'package:bases_web/ui/pages/page404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(const CounterPage(), '/stateful');
      case '/provider':
        return _fadeRoute(const CounterProviderPage(), '/provider');

      default:
        return _fadeRoute(const Page404(), '/404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(
        name: routeName,
      ),
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (_, __, ___) => child,
      transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
          ? FadeTransition(
              opacity: animation,
              child: child,
            )
          : CupertinoPageTransition(
              primaryRouteAnimation: animation, secondaryRouteAnimation: __, child: child, linearTransition: true),
      // transitionsBuilder: (_, animation, __, ___) => child,
    );
  }
}
