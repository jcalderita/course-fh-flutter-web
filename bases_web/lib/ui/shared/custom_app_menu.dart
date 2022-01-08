import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

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
            onPressed: () => Navigator.pushNamed(context, '/stateful'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10.0,
          ),
          CustomFlatButton(
            title: 'Contador Provider',
            onPressed: () => Navigator.pushNamed(context, '/provider'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10.0,
          ),
          CustomFlatButton(
            title: 'Otra pagina',
            onPressed: () => Navigator.pushNamed(context, '/aaa'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
