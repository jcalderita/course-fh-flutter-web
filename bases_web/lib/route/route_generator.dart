import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(const CounterView(), '/stateful');
      case '/provider':
        return _fadeRoute(const CounterProviderView(), '/provider');

      default:
        return _fadeRoute(const View404(), '/404');
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
