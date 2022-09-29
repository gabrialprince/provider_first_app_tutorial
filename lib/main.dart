import 'package:flutter/material.dart';
import 'package:state_management_provider_tutorial/provider/counter_provider.dart';
import 'package:state_management_provider_tutorial/provider/shopping_cart_provider.dart';
import 'package:state_management_provider_tutorial/screen/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider_tutorial/screen/second_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) =>
            Counter(), //_ is private to its library (i.e. counter_provider.dart)
      ),
      ChangeNotifierProvider(
        create: (_) =>
            ShoppingCart(), //_ is private to its library (i.e. shopping_cart_provider.dart)
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}
