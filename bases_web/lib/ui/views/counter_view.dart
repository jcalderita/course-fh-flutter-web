import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        const Text(
          'Contador Stateful',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Contador: $counter',
              style: const TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              title: 'Incrementar',
              onPressed: () => setState(() => counter++),
            ),
            CustomFlatButton(
              title: 'Decrementar',
              onPressed: () => setState(() => counter--),
              color: Colors.green,
            )
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
