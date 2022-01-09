import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  const View404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '404',
            style: TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Page not found!!',
            style: TextStyle(fontSize: 20.0),
          ),
          CustomFlatButton(title: 'Back', onPressed: () => Navigator.pushNamed(context, '/stateful'))
        ],
      ),
    );
  }
}
