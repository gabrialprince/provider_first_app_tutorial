import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider_tutorial/provider/shopping_cart_provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Example App '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${context.watch<ShoppingCart>().count}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              '${context.watch<ShoppingCart>().cart}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Text('Back Page'))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('increment_floatingActionButton'),
            onPressed: () => context.read<ShoppingCart>().addItem('Bread'),
            tooltip: 'Decrement',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            key: const Key('reset_floatingActionButton'),
            onPressed: () => context.read<ShoppingCart>().resetCart(),
            tooltip: 'reset',
            child: const Icon(Icons.exposure_zero),
          ),
        ],
      ),
    );
  }
}
