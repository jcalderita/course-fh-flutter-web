import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => LayoutBuilder(
      builder: (_, constraints) => constraints.maxWidth > 520 ? const _TableDesktopMenu() : const _MobileMenu());
}

class _TableDesktopMenu extends StatelessWidget {
  const _TableDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            title: 'Contador Stateful',
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            // onPressed: () => navigationService.navigateTo('/stateful'),
            onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10.0,
          ),
          CustomFlatButton(
            title: 'Contador Provider',
            // onPressed: () => Navigator.pushNamed(context, '/provider'),
            // onPressed: () => navigationService.navigateTo('/provider'),
            onPressed: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10.0,
          ),
          CustomFlatButton(
            title: 'Otra pagina',
            // onPressed: () => Navigator.pushNamed(context, '/aaa'),
            // onPressed: () => navigationService.navigateTo('/aaaa'),
            onPressed: () => locator<NavigationService>().navigateTo('/aaaa'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            title: 'Contador Stateful',
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            // onPressed: () => navigationService.navigateTo('/stateful'),
            onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10.0,
          ),
          CustomFlatButton(
            title: 'Contador Provider',
            // onPressed: () => Navigator.pushNamed(context, '/provider'),
            // onPressed: () => navigationService.navigateTo('/provider'),
            onPressed: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10.0,
          ),
          CustomFlatButton(
            title: 'Otra pagina',
            // onPressed: () => Navigator.pushNamed(context, '/aaa'),
            // onPressed: () => navigationService.navigateTo('/aaaa'),
            onPressed: () => locator<NavigationService>().navigateTo('/aaaa'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
